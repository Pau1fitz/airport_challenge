require_relative 'weather'

class Plane

  attr_accessor :status

include Weather
  
 def initialize
    @status  = "Flying"
  end

  def status
    @status
  end

end

