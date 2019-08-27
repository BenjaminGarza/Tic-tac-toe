load '../lib/logic.rb' 

puts "Enter player one name"
    name_one = gets.chomp

puts "Enter player two name"
    name_two = gets.chomp


player1 = Player.new("X",name_one)
player2 = Player.new("O",name_two)

game = Gameboard.new

game.show

puts "#{player1.name} VS #{player2.name}"

unless game.winner do
  current = game.current_player ? player1 : player2
  puts "Make a move #{current.name}"
        current_move = gets.chomp
        game.turn(current_move, current.character)

  game.show
end


puts "#{} is the victor!"