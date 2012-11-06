#!/usr/bin/env ruby

require 'rubygems'
require 'httparty'
require 'json'
require './vars'

puts HTTParty.post('http://localhost:3000/', { body: { data: JSON_DATA.to_json, template: TEMPLATE} })
