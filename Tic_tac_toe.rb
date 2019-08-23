class Player
    attr_accessor :character, :name

    def initialize(character,name)
        @character = character
        @name = name
    end

   end
class Gameboard
attr_accessor  :current_state

   def initialize
    @@current_state = [["Empty","Empty","Empty"],["Empty","Empty","Empty"],["Empty","Empty","Empty"]]

    end

def turn(current_move, player_character)
  @current_move = current_move.split(",")
  @x = @current_move[0].to_i
  @y = @current_move[1].to_i
  @@current_state[@x,@y] = player_character
  

end


 

 end   


puts "Enter player one name"
    name_one = gets.chomp

puts "Enter player two name"
    name_two = gets.chomp


player1 = Player.new("X",name_one)
player2 = Player.new("O",name_two)

game = Gameboard.new

puts game.current_state


puts "#{player1.name} VS #{player2.name}"

puts "Make a move #{player1.name}"
      current_move = gets.chomp
      game.turn(current_move, player1.character)

  
      
