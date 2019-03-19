require_relative 'player'
require_relative 'turn_manager'

class Game
  
  def initialize
    player1 = Player.new('P1')
    player2 = Player.new('P2')

    @players = [player1, player2]
    @turn_manager = TurnManager.new(@players)
  end

  def play
    while (not game_over?)
      turn = @turn_manager.next_turn(remaining_players)

      if (turn.lose?)
        puts "#{turn.name} wins with a score of /3"
      else
        first_num = random()
        second_num = random()
        puts "#{turn.name}: What does #{first_num} plus #{second_num} equal?"
        answer = gets.to_i
        if answer == first_num + second_num 
          puts "#{turn.name}: YES! You are correct." 
        else
          puts "#{turn.name}: Seriously? No!"
          turn.wrong
        end
      end
      puts summary
    end
    winning_player = remaining_players[0]

    header "#{winning_player.name} wins with a score of #{winning_player.score}/3"
  end

  private

  def random
    rand(1..9)
  end

  def remaining_players
    @players.select { |p| not p.lose? }
  end

  def game_over?
    remaining_players.count == 1
  end

  def header(message)
    puts
    puts  " ===== #{message} ====="
    puts
  end

  def summary
    "P1: #{@players[0].score}/3 vs P2: #{@players[1].score}/3"
  end

end