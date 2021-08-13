require 'game'

describe Game do
  let(:player2) { double :player2 }
  let(:player_class) { double :player_class, new: player2 }
  subject(:game) { 
    described_class.new("SuperHans",
      "Darth Vader",
      player_class: player_class
      ) }

  describe '#attack' do

    it 'reduces player 2 hp by amount given' do
      expect(player2).to receive(:reduce_hp).with(10)
      game.attack(10)
    end

  end

end