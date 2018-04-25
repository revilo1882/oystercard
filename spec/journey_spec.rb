require 'journey'

describe Journey do

  let(:station) { double :station, name: :bank, zone: 6}

  it 'responds true when' do
    subject.start(station)
    expect(subject.entry_station).to eq(station.name)
  end
  
end
