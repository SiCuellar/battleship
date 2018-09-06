require "./lib/board"
require "./lib/cell"
require "./lib/ship"
require "./lib/ship_deployment"

class GameSequence
  def initialize
    @player_board = Board.new
    @player_ship_2 = Ship.new(2)
    @player_ship_3 = Ship.new(3)
    @computer_board = Board.new
    @computer_ship_2 = Ship.new(2)
    @computer_ship_3 = Ship.new(2)
  end

  def launch
    puts "Welcome to BATTLEHIP!!!!!!!!!!!!"
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit? "
    launch_user_input = gets.chomp.downcase
    start_game_selections(launch_user_input)
  end

  def start_game_selections(user_selection)
    if user_selection == "p"
      computer_setup
    elsif user_selection == "i"
      instructions
    elsif user_selection == "q"
      quit
    else
      puts "invalid input! \n choose P - to play \n I - for instructions \n
            Q - to quit"
    end
  end

  def computer_setup
    @computer_board.make_board_grid



  end

  def instructions
    puts "Welcome to BATTLEHIP! \n Upon launching the game the computer will
          place ships on its board. \n You will then be instructed to place
          your ships on the board using a coordinate system. \n The computer and
          the player will then battle it out taking turns by shooting torpedos
          using coordinates. \n The game ends when all of the player or computer
          ships are sunk. \n Good Luck!"
  end

  def quit
    puts "~Thanks for playing~"
  end
end
