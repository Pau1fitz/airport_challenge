require 'plane.rb' 

describe Plane do

  let(:plane) {Plane.new}

  it 'should be flying when created' do
    expect(plane).to be_flying
  end

  it 'should be able to land' do
    plane.land
    expect(plane).not_to be_flying
  end

  it 'should have flying status when flying' do
    expect(plane.status).to eq "Flying"
  end

  it 'should have landed status when landed' do
    plane.land
    expect(plane.status).to eq "Landed"
  end

end