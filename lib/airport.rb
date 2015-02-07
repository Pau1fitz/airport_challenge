class Airport

  DEFAULT_CAPACITY = 6

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @holder = []
  end

  def plane_count
    @holder.length
  end

  def land(plane)
    raise "Airport is full" if full?
    @holder << plane
    plane.status 
  end

  def take_off(plane)
    @holder.delete(plane)
  end

  def full?
    plane_count >= @capacity
  end

end

