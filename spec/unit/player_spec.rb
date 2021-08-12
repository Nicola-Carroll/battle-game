require 'player'

describe Player do
  subject(:player_1) { described_class.new("Loula") }

  it 'has a name' do
    expect(player_1.name).to eq "Loula"
  end

  describe '#reduce_hp' do
    
    it 'reduces hp' do
      expect(player_1.reduce_hp(10)).to eq 40
    end

  end

end