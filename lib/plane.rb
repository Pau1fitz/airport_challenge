require_relative 'weather'

class Plane

  include Weather

  attr_accessor :status

  def initialize
    @status = "Flying"
  end

  def status
    @status
  end

  def take_off(airport)
    @status = "Flying"
    airport.remove(self)
    if airport.full?
      airport.clear
    end
  end
end
