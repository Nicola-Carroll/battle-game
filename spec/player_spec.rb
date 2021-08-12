require 'player'
describe 'Player' do
  it 'has a name' do
    player_1 = Player.new("Loula")
    expect(player_1.name).to eq "Loula"
  end
end