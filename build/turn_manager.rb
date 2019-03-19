require_relative 'player'

class TurnManager
  def initialize(players)
    @players = players
    @current_turn = 1
  end

  def next_turn(players)
    # questioner = get_questioner
    # answerer = get_answerer(questioner, players)
    increment_turn
    players[@current_turn]
  end

  private

  # def get_questioner
  #   @players.select { |p| p != questioner }.sample
  # end

  # def get_answerer(questioner, players)
  #   @players[@current_turn]
  # end

  def increment_turn
    @current_turn = (@current_turn + 1) % @players.count
  end

end