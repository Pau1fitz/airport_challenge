require_relative 'weather'

class Airport

  include Weather

  attr_accessor :holder 

  DEFAULT_CAPACITY = 6

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @holder = []
  end

  def plane_count
    holder.length
  end

  def land(plane)
    raise "Cannot land due to storm" if stormy?
    if full?
      holder.each {|plane| plane.take_off}
      holder.clear
      raise "Airport is full"  
    end
    plane.land
    holder << plane
  end

  def take_off(plane)
   
    if stormy?
     raise "Cannot take off due to storm"
    end
  end

  def full?
    plane_count >= @capacity
  end

end

