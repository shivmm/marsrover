require 'bundler/setup'
require 'data_mapper'
DataMapper.setup(:default, 'postgres://shivam:shivam@localhost/marsrover')
require './models/rover.rb'
require './models/rover_controller.rb'

