class MarsRoverController

  # This is the class that controls the various Rovers
  # It reads and parses an input file, instantiates Rovers as required, passes them the commands and returns the output


  # Public: processes a file of commands
  
  # filename: a String, with the name of the file with the commands
  # returns a String with the position of the rovers on each line
  def self.process(filename)
    commands = File.read(filename).split("\n")
    max_length, min_length = commands[0].split(' ').map(&:to_i)
    commands[1..-1].each_slice(2).map do |riv| 
      r = Rover.new(riv[0])
      r.process(riv[1])
      r.pos.join(" ")
    end.join("\n")
    
  end  


end
