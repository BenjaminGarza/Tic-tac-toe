class Player
    attr_accessor :character, :name

    def initialize(character,name)
        @character = character
        @name = name
    end

   end
class Gameboard
@current_state = [[[nil],[nil],[nil]],[[nil],[nil],[nil]],[[nil],[nil],[nil]]]


    def initialize
    

    end

 end   

puts "Enter player one name"
    name_one = gets.chomp

puts "Enter player two name"
    name_two = gets.chomp


    player1 = Player.new("X",name_one)
    player2 = Player.new("O",name_two)

    puts "#{player1.name} VS #{player2.name}"