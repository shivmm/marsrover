require 'rspec'
require './MarsRover.rb'

describe MarsRoverController do

  it "should give correct output" do
    MarsRoverController.process("command.txt").should == "1 3 N\n5 1 E"
  end

end
  
