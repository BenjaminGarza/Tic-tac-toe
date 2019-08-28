load '../lib/logic.rb'

   def start

    game = Game.new

    game.show

    puts "#{player1.name} VS #{player2.name}"

    return game
   end

   def create_player
    puts "Enter player one name"
    name_one = gets.chomp

    puts "Enter player two name"
    name_two = gets.chomp

    player1 = Player.new("X",name_one)
    player2 = Player.new("O",name_two)


   end



   def run_game 
    until game.winner || game.board.emptyCounter == 0 do
      current = game.current_player ? player1 : player2
      puts "Make a move #{current.name}"
            current_move = gets.chomp
            game.turn(current_move, current.character)
            puts "Please make a valid move" unless game.valid_move
    
      game.show
    end
    
    if game.board.emptyCounter == 0
      puts "Draw!"
    else
      winner = game.current_player ? player1 : player2
      puts "#{winner.name} is the victor!"
    end
   end


  
player1 = create_player("X")
player2 = create_player("Y")



