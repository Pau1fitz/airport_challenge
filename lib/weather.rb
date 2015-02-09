module Weather

  CHANCE_OF_STORM = 25

  def stormy?
    forecast < CHANCE_OF_STORM
  end

  def forecast
    rand(100)
  end
end