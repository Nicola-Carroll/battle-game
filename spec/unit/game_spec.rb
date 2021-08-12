require 'game'
describe Game do
  let(:player2) {double :player2, hp: 50}
  let(:player_class) {double :player_class, new: player2}
  subject(:game) {described_class.new("SuperHans", "Darth Vader", player_class: player_class)}
  it 'reduces hp' do
    allow(player2).to receive(:reduce_hp).with(10).and_return(40)
    allow(player_class).to receive(:new).and_return(player2)
    puts subject.player2.hp
    subject.attack(10)
    puts subject.player2.hp
    expect { subject.attack(10) }.to change { subject.player2.hp }.by(-10)
  end

end