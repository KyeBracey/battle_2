class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = 0
  end

  def attack(player)
    @turn.even? ? @player_1.reduce_hit_points : @player_2.reduce_hit_points
  end

  def increase_turn_by_one
    @turn += 1
  end

  def display_opponent_hit_points
    @turn.even? ? @player_1.hit_points : @player_2.hit_points
  end

  def display_attacker
    @turn.even? ? @player_2.name : @player_1.name
  end

  def display_defender
    @turn.even? ? @player_1.name : @player_2.name
  end

end
