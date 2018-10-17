require './lib/player'

class Game
  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_turn = player_1
  end

  def current_turn
    @current_turn
  end

  def switch_turn
    @current_turn == player_1 ? @current_turn = player_2 : @current_turn = player_1
  end

  def attack(player)
    player == player_1 ? player_2.receive_damage : player_1.receive_damage
  end
end
