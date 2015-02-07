require 'plane'
require "airport"

describe Plane do 


  let(:plane) {Plane.new}
  let(:airport){Airport.new}
  

 it 'has a flying status when created' do
    expect(plane.status).to eq "Flying"
  end

  it 'has a landed status when in airport' do
    allow(airport).to receive(:stormy?).and_return false
    airport.land(plane)
    expect(plane.status).to eq "Landed"
  end


end