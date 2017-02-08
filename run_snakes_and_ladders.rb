require_relative('./snakes_ladders.rb')
require ('colorize')

class Game

  def run()

    @player1 = Player.new("Adam")
    @player2 = Player.new("Suzanne")


    @board = Board.new

    while @player1.position != 100 && @player2.position != 100

      @player1.take_turn(@board)
        puts "#{@player1.name} rolled #{@player1.dice_roll}".red
        if @player1.position < @player1.new_position && @player1.position < 94
          puts "#{@player1.name} got a snake!!!!"
        elsif @player1.position > @player1.new_position
          puts "#{@player1.name} got a ladder - yay!!!!"
        end
        puts "#{@player1.name} position: #{@player1.position}.".red
        puts "----------------------------------------------------------"
        break if @player1.position == 100
        sleep(1)
      @player2.take_turn(@board)
        puts "#{@player2.name} rolled #{@player2.dice_roll}".blue
        if @player2.position < @player2.new_position && @player2.position < 94
          puts "#{@player2.name} got a snake!!!!"
        elsif @player2.position > @player2.new_position
          puts "#{@player2.name} got a ladder - yay!!!!"
        end
        puts "#{@player2.name} position: #{@player2.position}.".blue
        puts "----------------------------------------------------------"
        break if @player2.position == 100
        sleep(1)

    end
    if @player1.position == 100
      puts "#{@player1.name} wins!".red
    else
      puts "#{@player2.name} wins!".blue
    end

  end

end

game = Game.new

game.run