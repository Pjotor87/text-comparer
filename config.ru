# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

require 'sinatra'
Dir["./app/controllers/*.rb"].each {|file| require file }

require 'slim'

use ApplicationController
run HomeController
