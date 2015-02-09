require 'plane'

describe Plane do 

  let(:plane) {Plane.new}
  let(:airport) {double :airport}
  
 it 'has a flying status when created' do
    expect(plane.status).to eq :flying
  end

  it 'has a landed status when landed' do
    plane.land
    expect(plane.status).to eq :landed  
  end

end