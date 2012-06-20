require 'rspec'
require 'dm-rspec'
require './models/rover.rb'

describe Rover do
  
  subject{ Rover.new("1 2 N")}

  it { should respond_to(:pos) }
  it { should respond_to(:process) }

  it { should have_property(:x)}
  it { should have_property(:y)}
  it { should have_property(:dir)}
  it { should validate_numericality_of(:x)}
  it { should validate_numericality_of(:y)}


  describe "methods" do
    before :all do
      @r = Rover.new("1 2 N")
    end
    
    it "should have method 'move'" do
      @r.methods.should include(:move)
    end

    it "should have method 'turn'" do
      @r.methods.should include(:turn)
    end
  end


  describe "rover behaviour" do
    before :each do
      @r = Rover.new("1 2 N")
    end

    it "should assign initial state correctly" do

      @r.x.should == 1
      @r.y.should == 2
      @r.dir.should == "N"
    end

    describe "movement" do
      it "should move correctly with correct input" do
        @r.move
        @r.pos.should == [1, 3, "N"]
      end

      it  "should not move if input is not M" do
        @r.pos.should == [1, 2, "N"]
      end


      describe "edge of plateau" do
        before :all do
          @r.x = 5
          @r.y = 5
          @r.move
        end
        
        it "should not move when at the edge" do
          @r.pos.should == [5, 5, "N"]
        end
      end
    end
   
    describe "turning" do
      it "should turn right correctly" do
        @r.turn("R")
        @r.dir.should == "E"
      end
      
      it "should turn left properly" do
        @r.turn("L")
        @r.dir.should == "W"
      end

      it "should not turn if input is not L OR R" do
        @r.dir.should == "N"
      end
    end
    

    describe "processing" do
      it "should process inputs properly" do
        @r.process("MMLMM")
        @r.pos.should == [-1,4, "W"]
      end
    end
  end
end


    
