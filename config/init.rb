require 'bundler/setup'
require 'data_mapper'
DataMapper.setup(:default, 'postgres://uadmin:uadmin@localhost/marsrover')
require './models/rover.rb'
require './models/rover_controller.rb'

DataMapper.auto_upgrade!
