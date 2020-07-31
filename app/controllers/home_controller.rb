#require 'net/http'
#require "uri"

class HomeController < Sinatra::Base
  get '/home' do
    redirect "/home/index"
  end
  get '/home/index' do
    "Hello home controller..."
  end

  #get '/req/' do
  # uri = URI.parse("http://thaiembassy.se/en/home/")
  #  http = Net::HTTP.new(uri.host, uri.port)
  #  response = http.request(Net::HTTP::Get.new(uri.request_uri))
  #  body response.body
  #end
end
