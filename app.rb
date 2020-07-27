require 'sinatra'
require 'net/http'
require "uri"

#class MyApp < Sinatra::Base

get '/' do
  "Returnable string..."
end

get '/req/' do
  uri = URI.parse("http://thaiembassy.se/en/home/")
  http = Net::HTTP.new(uri.host, uri.port)
  response = http.request(Net::HTTP::Get.new(uri.request_uri))
  body response.body
end

#end

#run MyApp.run!
