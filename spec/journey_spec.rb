require 'journey'

describe Journey do

  let(:station) { double :station, name: :bank, zone: 6}

  describe '#start' do
    it 'entry station equals station name ' do
      subject.start(station)
      expect(subject.entry_station).to eq(station.name)
    end
  end

  describe '#finish' do
    it 'exit station equals station name' do
      subject.finish(station)
      expect(subject.exit_station).to eq(station.name)
    end
  end

  describe '#complete?' do
    it 'starts false before start method called' do
      expect(subject.complete?).to be false
    end

    it 'should be false if only a entry station' do
      subject.start(station)
      expect(subject.complete?).to be false
    end

    it 'should be false if only a exit station' do
      subject.finish(station)
      expect(subject.complete?).to be false
    end

    it 'should be true when entry staion and exit station are both not nil' do
      subject.start(station)
      subject.finish(station)
      expect(subject.complete?).to be true
    end
  end

end
