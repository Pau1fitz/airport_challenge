require 'airport.rb'
  
describe Airport do 

let(:airport) {Airport.new}
let(:plane) {double :plane}

  it 'should not have any planes docked at beginning' do
    expect(airport.plane_count).to eq(0)
  end

  it 'should have a plane count of one after a plane lands' do
    expect(airport.plane_count).to eq(0)
    airport.dock_plane(plane)
    expect(airport.plane_count).to eq(1)
  end

  it 'should not allow planes land if full' do
    6.times{ airport.dock_plane(plane) }
    expect{ airport.dock_plane(plane) }.to raise_error(RuntimeError, "Airport is full")
    
  end


end
