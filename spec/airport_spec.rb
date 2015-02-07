require 'airport'
#require 'plane'

describe Airport do
#describe Plane do 
   

let(:airport) {Airport.new}
let(:plane) {double :plane, status: 'Flying'}

it 'should allow a plane to land' do
  expect(airport.plane_count).to eq(0)
  airport.land(plane)
  expect(airport.plane_count).to eq(1)
  
end

it 'should allow a plane take off' do
  airport.land(plane)
  expect(airport.plane_count).to eq(1)
  airport.take_off(plane)
  expect(airport.plane_count).to eq(0)
end

it 'should know when it is full' do
  expect(airport).not_to be_full
  6.times {airport.land(plane)}
  expect(airport).to be_full
end

it 'should not accept a plane and raise error when full' do
  5.times {airport.land(plane)}
  airport.land(plane)
  expect(lambda { airport.land(plane) }).to raise_error(RuntimeError, 'Airport is full')
  end
  #end
end

