#!/usr/bin/env ruby

require 'rubygems'
require 'httparty'
require 'json'
require 'shellwords'
require 'socket'
require 'benchmark'
require './vars'


Benchmark.bm do |b|
  x = 1000

  b.report('socket') do
    x.times do
      UNIXSocket.open('/tmp/yo.sock') do |socket|
        socket.send(TEMPLATE + "\nEOF",0)
        res = socket.gets
        if res == "ok\n"
          socket.send(JSON_DATA.to_json + "\nEOF",0)

          rendered = ""
          recv_length = 56
          while (tmp = socket.recv(recv_length))
              rendered += tmp
              break if tmp.length < recv_length
          end
        end
      end
    end
  end

  b.report('server') do
    x.times { HTTParty.post('http://localhost:3000/', { body: { data: JSON_DATA.to_json, template: TEMPLATE} }) }
  end

  b.report('cli   ') do
    data = Shellwords.escape(JSON_DATA.to_json)
    template = Shellwords.escape(TEMPLATE)

    x.times { `node cli.js #{template} #{data}` }
  end
end
