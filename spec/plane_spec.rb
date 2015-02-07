require 'plane'

describe Plane do 

  let(:plane){Plane.new}
  let(:airport){double :airport}

  it 'has a flying status when created' do
    expect(plane.status).to eq "Flying"
  end
end