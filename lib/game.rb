class Game
  attr_reader :current_player

  def initialize(name1, name2, player_class:)
    @player1 = player_class.new(name1)
    @player2 = player_class.new(name2)

    @current_player = @player1
  end

  def player1
    @player1
  end

  def player2
    @player2
  end

  def attack(amount)
    switch_turns
    @player2.reduce_hp(amount)
  end

  def switch_turns
    players = [@player1, @player2]
    
    @current_player = players.reject{ |p| p == @current_player }[0]
  end

end