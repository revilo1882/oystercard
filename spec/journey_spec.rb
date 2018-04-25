require 'journey'

describe Journey do

  let(:station) { double :station, name: :bank, zone: 6}

  it 'responds true when' do
    subject.start(station)
    expect(subject.entry_station).to eq(station.name)
  end

  it 'responds to finish' do
    subject.finish(station)
    expect(subject.exit_station).to eq(station.name)
  end

end
