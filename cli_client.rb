#!/usr/bin/env ruby

require 'rubygems'
require 'shellwords'
require 'json'
require './vars'

data = Shellwords.escape(JSON_DATA.to_json)
template=  Shellwords.escape(TEMPLATE)

puts `node cli.js #{template} #{data}`
