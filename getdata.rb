require 'rubygems'
require 'sinatra'
require 'haml' 
require 'data_mapper' # metagem, requires common plugins too

DataMapper.setup(:default, 'postgres://uadmin:uadmin@localhost/marsrover')


class Rover
  include DataMapper::Resource
  property :id,                Serial
  property :x,                 Integer
  property :y,                 Integer
  property :dir,               String
  property :time,              DateTime  
end


DataMapper.finalize
# Rover.auto_upgrade!


get '/rovers' do
  erb :index
end


post '/addrover' do

# Rover.create(:x => params[:xvalue], :y => params[:yvalue], :dir => params[:direction], :time => Time.now )
#  a = Rover.all :order=>[:id]
#  haml :index
# a = Rover.new('x' => params[:xvalue], 'y' => params[:yvalue], 'dir' => params[:direction], 'time' => Time.now)
#  a.save
#  Rover.all
#  erb :display    
#  puts params[:yvalue]
#  puts params[:direction]
#  puts Time.now

end
