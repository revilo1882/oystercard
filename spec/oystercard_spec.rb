require 'oystercard'



describe Oystercard do

  it 'has balance of zero' do
    expect(subject.balance).to eq(0)
  end

  it 'tops up balance by 10' do
    expect{subject.top_up(10)}.to change{subject.balance}.by(10)
  end

  it 'it has a maximum balance' do
    limit = Oystercard::MAXIMUM_BALANCE
      subject.top_up(limit)
      expect { subject.top_up(1) }.to raise_error "maximim balance of £#{limit} exceeded"
  end

  it 'deducts balance by 5' do
    expect{subject.deduct(5)}.to change{subject.balance}.by(-5)
  end

end
