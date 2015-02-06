class Airport

  DEFAULT_CAPACITY = 6

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY) 
    @hangar = []
  end

  def plane_count
    @hangar.length
  end

  def dock_plane(plane)
    raise "Airport is full" if full?
    @hangar << plane
    plane.land
  end

  def full?
    plane_count >= @capacity
  end


end
