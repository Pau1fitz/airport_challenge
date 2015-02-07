require 'weather'

class WeatherHolder
  include Weather
end

describe Weather do

  let(:weather) {WeatherHolder.new}
  let (:stormy_weather){double :weather, stormy?: true}
  let(:sunny_weather) {double :weather, sunny?: true}

it 'should be either sunny or stormy' do
  expect(stormy_weather).to be_stormy
  expect(sunny_weather).to be_sunny
end
end