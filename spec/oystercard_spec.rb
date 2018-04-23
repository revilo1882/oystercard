require 'oystercard'



describe Oystercard do

  it 'has balance of zero' do
    expect(subject.balance).to eq(0)
  end

  it 'tops up balance by 10' do
    expect{subject.top_up(10)}.to change{subject.balance}.by(10)
  end

end
