class Player
    attr_accessor :character, :name

    def initialize(character,name)
        @character = character
        @name = name
    end

   end
class Gameboard
attr_accessor  :current_state, :current_player

   def initialize
    @current_state = [["Empty","Empty","Empty"],["Empty","Empty","Empty"],["Empty","Empty","Empty"]]

    @current_player = true
    end

def turn(current_move, player_character)
  @current_move = current_move.split(",")
  @y = @current_move[0].to_i - 1
  @x = @current_move[1].to_i - 1

  if @current_state[@x][@y] == "Empty"
    @current_state[@x][@y] = player_character
  else
    return puts "Please make a valid move"
  end
  @current_player = !@current_player
end

def show
(0..2).each do |i|
  (0..2).each do |j|
    print @current_state[i][j]
    print "\t"
  end
  print "\n"
end

end




 end

puts "Enter player one name"
    name_one = gets.chomp

puts "Enter player two name"
    name_two = gets.chomp


player1 = Player.new("X",name_one)
player2 = Player.new("O",name_two)

game = Gameboard.new

game.show

puts "#{player1.name} VS #{player2.name}"

5.times do
  current = game.current_player ? player1 : player2
  puts "Make a move #{current.name}"
        current_move = gets.chomp
        game.turn(current_move, current.character)

  game.show
end
