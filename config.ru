require 'sinatra/base'
require 'tilt/erb'

Dir.glob('./app/{controllers}/*.rb').each { |file| require file }

map('/') { run WelcomeController }
