# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

require 'sinatra'
Dir["./app/controllers/*.rb"].each {|file| require file }
#require_relative './app/controllers/application_controller.rb'
#require_relative './app/controllers/home_controller.rb'

#run Sinatra::Application
use ApplicationController
run HomeController
#ApplicationController.start!
