require 'sinatra'
require './marsrover.rb'

get '/rovers' do
  @rovers = Rover.all
  haml :index
end
