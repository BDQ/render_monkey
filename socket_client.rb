#!/usr/bin/env ruby

require 'rubygems'
require 'socket'
require 'json'
require './vars'

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

    puts rendered
  else
    puts "ERROR: #{res}"
  end
end
