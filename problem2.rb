class Game
  def initialize
    @total_points = 0
    @rooms = {
      1 => 5,
      2 => 10,
      3 => 15
    }
  end

  def start
    puts "Welcome to the Adventure Game!"
    puts "You have #{@total_points} points."

    loop do
      puts "Choose a room (1-3) to enter or 'exit' to end the game:"
      choice = gets.chomp.downcase

      break if choice == 'exit'

      room_number = choice.to_i

      if (1..3).include?(room_number)
        enter_room(room_number)
      else
        puts "Invalid choice. Please enter a number between 1 and 3 or 'exit' to end the game."
      end
    end

    puts "Game over! You collected a total of #{@total_points} points."
  end

  private

  def enter_room(room_number)
    points = @rooms[room_number]
    @total_points += points
    puts "You entered Room #{room_number} and earned #{points} points."
    puts "Your total points now: #{@total_points}."
  end
end

game = Game.new
game.start
