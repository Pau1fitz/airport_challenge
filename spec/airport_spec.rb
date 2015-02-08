require 'airport'
require 'plane'

describe Airport do

   
let(:airport) {Airport.new}
let(:plane) {Plane.new}

it 'should allow a plane to land' do
  allow(airport).to receive(:stormy?).and_return false
  expect(airport.plane_count).to eq(0)
  airport.land(plane)
  expect(plane.status).to eq "Landed"
  expect(airport.plane_count).to eq(1)
  
end

it 'should allow a plane take off' do
  allow(airport).to receive(:stormy?).and_return false
  airport.land(plane)
  expect(airport.plane_count).to eq(1)
  airport.take_off(plane)
  expect(airport.plane_count).to eq(0)
end

it 'should know when it is full' do
  allow(airport).to receive(:stormy?).and_return false
  expect(airport).not_to be_full
  6.times {airport.land(plane)}
  expect(airport).to be_full
end

it 'should not accept a plane and raise error when full' do
  allow(airport).to receive(:stormy?).and_return false
  5.times {airport.land(plane)}
  airport.land(plane)
  expect(lambda { airport.land(plane) }).to raise_error(RuntimeError, 'Airport is full')
  end

  it 'should order all planes to take off if full' do
    allow(airport).to receive(:stormy?).and_return false
    6.times {airport.land(plane)}
    airport.holder.clear
  end

  context 'Weather conditions control' do
  
  it 'should not allow a plane to land if stormy' do
    allow(airport).to receive(:stormy?).and_return true
    expect{ airport.land(plane) }.to raise_error "Cannot land due to storm"
  end

  it 'should not allow a plane take off if stormy' do
    allow(airport).to receive(:stormy?).and_return true
    expect {airport.take_off(plane) }.to raise_error "Cannot land due to storm"
  end
  
  context 'Final tests' do

  it 'should be possible for all six planes to land and have landed status' do
    allow(airport).to receive(:stormy?).and_return false 
    6.times {airport.land(plane)}
    expect(plane.status).to eq "Landed"
  end

  it 'should have an empty hangar after all planes landed and planes should have flying status' do
    allow(airport).to receive(:stormy?).and_return false
    6.times {airport.land(plane)}
    expect(lambda { airport.land(plane) }).to raise_error(RuntimeError, "Airport is full")
    expect(airport.plane_count).to eq(0)
    expect(plane.status).to eq "Flying"
  end
end
end
end

