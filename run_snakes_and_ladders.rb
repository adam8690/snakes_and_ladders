require_relative('./snakes_ladders.rb')

class Game

  def run()

    @player1 = Player.new("Adam")
    @player2 = Player.new("Suzanne")


    @board = Board.new

    while @player1.position != 100 && @player2.position != 100

      @player1.take_turn(@board)
        puts "#{@player1.name} rolled #{@player1.dice_roll}"
        puts "#{@player1.name} position: #{@player1.position}."
        puts "----------------------------------------------------------"
        break if @player1.position == 100
      @player2.take_turn(@board)
        puts "#{@player2.name} rolled #{@player2.dice_roll}"
        puts "#{@player2.name} position: #{@player2.position}."
        puts "----------------------------------------------------------"
        break if @player2.position == 100

    end

  end

end

game = Game.new

game.run