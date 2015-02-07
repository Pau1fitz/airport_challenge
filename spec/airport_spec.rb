require 'airport'

describe Airport do

let(:airport) {Airport.new}
let(:plane) {double :plane}
let(:landed_plane){double :landed_plane, status: "Landed"}
let(:flying_plane){double :flying_plane, status: "Flying"}


  it 'should have no planes in hangar at beginning' do
    expect(airport.plane_count).to eq(0)
  end  

  it 'should have a plane in hangar after a plane lands' do
    airport.land(plane)
    expect(airport.plane_count).to eq(1)
    expect(landed_plane).to receive(:status)
  end

  it 'should allow plane to leave hangar and take off' do
    airport.land(plane)
    expect(landed_plane).to receive(:status)
    airport.take_off(plane)
    expect(flying_plane).to receive(:status)
    expect(airport.plane_count).to eq(0)
  end

  it 'should not allow a plane land if full' do
    10.times{airport.land(plane)}
    expect{ airport.land(plane)}.to raise_error(RuntimeError, 'Airport is full')
  end

  it 'should change status of plane to flying after take off' do
    airport.take_off(plane)
    expect(flying_plane).to receive(:status)
  end
end