class ApplicationController < Sinatra::Base
  get '/' do
    redirect '/index'
  end
  get '/index' do
    slim :'index'
  end
  get '/test' do
    "Hello test route!"
  end
end
