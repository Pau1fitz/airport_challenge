require_relative 'weather'

class Airport

  include Weather

  attr_accessor :holder, :status

  DEFAULT_CAPACITY = 6

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @holder = []
  end

  def plane_count
    @holder.length
  end

  def land(plane)
    if full?
      @holder.clear
    raise "Airport is full"
    end
   plane.status = "Landed"
    @holder << plane
    if stormy?
     raise "Cannot land due to storm"
    end
  end

  def take_off(plane)
    @holder.delete(plane)
  end

  def full?
    plane_count >= @capacity
  end

end

