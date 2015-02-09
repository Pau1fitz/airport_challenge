require_relative 'weather'

class Plane

  attr_accessor :status

include Weather
  
def initialize
  @status = :flying 
end

def land
  @status = :landed
end

def take_off
  raise "Already flying" if flying?
  self.status :flying 
end

def flying?
  status == :flying
end

end

