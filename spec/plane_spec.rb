

require 'plane'

describe Plane do 

  let(:plane) {Plane.new}
  let(:airport){double :airport}

 it 'has a flying status when created' do
    expect(plane.status).to eq "Flying"
  end

  it 'has a flying status when in air' do

  end

end