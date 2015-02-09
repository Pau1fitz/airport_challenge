require 'weather'

class WeatherHolder
  include Weather
end

describe Weather do

  let(:weather) {WeatherHolder.new}

it 'can be stormy' do
  allow(weather).to receive(:stormy?).and_return(true)
  expect(weather).to be_stormy
end

it 'can be sunny' do
  allow(weather).to receive(:stormy?).and_return(false)
  expect(weather).to_not be_stormy
end
end