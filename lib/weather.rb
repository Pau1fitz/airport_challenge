module Weather

  def stormy?
    if rand < 0.8
      "stormy"
    else
      "sunny"
  end
end
end