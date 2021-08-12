class Player
  attr_reader :hp

  DEFAULT_HP = 50

  def initialize(name) 
    @name = name
    @hp = DEFAULT_HP
  end

  def name
    @name
  end

  def reduce_hp(value)
    @hp -= value
  end

  def hp
    @hp
  end

end