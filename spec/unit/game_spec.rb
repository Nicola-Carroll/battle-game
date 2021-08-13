require 'game'

describe Game do
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }
  let(:player_class) { double :player_class }

  subject(:game) { 
    described_class.new("SuperHans",
      "Darth Vader",
      player_class: player_class
      ) }

  describe '#attack' do

    it 'reduces player 2 hp by amount given' do
      allow(player_class).to receive(:new).and_return(player1, player2)
      expect(player2).to receive(:reduce_hp).with(10)
      game.attack(10)
    end

    it 'causes the players to be switched' do
      allow(player_class).to receive(:new).and_return(player1, player2)
      allow(player2).to receive(:reduce_hp).with(10)
      expect(game).to receive(:switch_turns).and_return(player2)
      game.attack(10)
    end
  
  end

  describe '#switch_turns' do

    it 'switches turn' do
      allow(player_class).to receive(:new).and_return(player1, player2)
      expect(game.switch_turns).to eq(game.player2) 
    end

  end
end