require_relative 'weather'

class Airport

  include Weather

  attr_accessor :hangar

  DEFAULT_CAPACITY = 2

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @hangar = []
  end

  def plane_count
    @hangar.length
  end

  def land(plane)
    raise "There is a storm a brewing" if is_stormy?
    if full?
    plane.status = "Flying"
    @hangar.clear

    raise 'Airport is full'
    end
    @hangar << plane 
    plane.status = "Landed"
  
  end

  def remove(plane)
    @hangar.delete(plane)
  end

  def full?
    plane_count == @capacity 
  end
end
