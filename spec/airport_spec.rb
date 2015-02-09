require 'airport'

describe Airport do

  let(:airport) { Airport.new }
  let(:plane) { double(:plane,land: :landed, take_off: :flying) }

  before do
    allow(airport).to receive(:stormy?).and_return false
  end

  it 'should allow a plane to land' do
    airport.land(plane)
    expect(airport.plane_count).to eq(1)
  end

  it 'should allow a plane take off' do
    airport.take_off(plane)
    expect(airport.plane_count).to eq(0)
  end

  it 'should know when it is full' do
    
    land_planes(6)
    expect(airport).to be_full
  end

  it 'should not accept a plane and raise error when full' do
    land_planes(5)
    airport.land(plane)
    expect(lambda { airport.land(plane) }).to raise_error(RuntimeError, 'Airport is full')
  end

  it 'should order all planes to take off if full' do
    land_planes(6)
    airport.holder.clear
  end

  context 'Weather conditions control' do
    
    it 'should not allow a plane to land if stormy' do
      allow(airport).to receive(:stormy?).and_return true
      expect{ airport.land(plane) }.to raise_error "Cannot land due to storm"
    end

    it 'should not allow a plane take off if stormy' do
      allow(airport).to receive(:stormy?).and_return true
      expect {airport.take_off(plane) }.to raise_error "Cannot take off due to storm"
    end
  end

  context 'Final tests' do

    it 'should be possible for all six planes to land and have landed status' do
      land_planes(6)
      expect(plane.land).to eq :landed
    end

    it 'should have an empty hangar after all planes landed and planes should have flying status' do
      land_planes(6)
      expect(lambda { airport.land(plane) }).to raise_error(RuntimeError, "Airport is full")
      expect(airport.plane_count).to eq(0)
      allow(plane).to receive(:status).and_return(:flying)
      expect(plane.status).to eq :flying
    end
  end
end

def land_planes(number)
  number.times {airport.land(plane)}
end