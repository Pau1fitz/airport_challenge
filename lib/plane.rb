class Plane

  def initialize
    @flying = true
  end

  def flying?
    @flying
  end

  def land
    @flying = false
  end

  def status
    return 'Flying' if @flying
    return 'Landed' if @flying == false
  end

end   