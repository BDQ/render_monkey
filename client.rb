require 'rubygems'
require 'httparty'
require 'json'

data = {
  name: { first: 'Brian' }
}

template = %q{Name: <%= name.first %>}

puts HTTParty.post('http://localhost:3000/', { body: { data: data.to_json, template: template} })
