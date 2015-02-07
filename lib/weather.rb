module Weather
  CHANCE_OF_SUNNY_WEATHER = 70

  def stormy?
    forecast > CHANCE_OF_SUNNY_WEATHER
  end

  def forecast
    rand(1..100)
  end
end