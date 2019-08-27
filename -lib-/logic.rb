class Player
    attr_accessor :character, :name

    def initialize(character,name)
        @character = character
        @name = name
    end

   end
class Gameboard
attr_accessor  :current_state, :current_player, :winner

   def initialize
    @current_state = [["Empty","Empty","Empty"],["Empty","Empty","Empty"],["Empty","Empty","Empty"]]
    @current_player = true
    @winner = false
    end

    def win_check(player_character)
        @winner = false
        @column_count = [0,0,0]
        @diagonal_count_top = 0
        @diagonal_count_bottom = 0

        (0..2).each do |i|
          @count = 0

            (0..2).each do |j|
              if  @current_state[i][j] == player_character
                @count += 1
                @column_count[j] +=1

                @winner = true if @count == 3 || @column_count[j] == 3
              end
            end
          @diagonal_count_top += 1 if @current_state[i][i] == player_character
          @diagonal_count_bottom += 1 if @current_state[i][2-i] == player_character
          @winner = true if @diagonal_count_top == 3 || @diagonal_count_bottom == 3
        end
        return @winner
    end

    def emptyCounter
      counter = 0
      @current_state.each do |x|
        x.each do |y|
          counter += 1 if y == "Empty"
        end
      end

      return counter
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
    @current_player = !@current_player unless win_check(player_character)
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

    
