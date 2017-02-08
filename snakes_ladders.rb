class Player

attr_reader :name, :position

def initialize(name)
  @name = name
  @position = 0
end

def take_turn
  dice = Dice.new

  @position += dice.roll

end


end





class Dice

  def roll()

    value = 1 + rand(6)
    return value

  end

end


class Board

attr_reader :winning_square, :ladders, :snakes

def initialize
  @winning_square = 100
  @ladders = { 20 => 39 }
  @snakes = { 30 => 8 }
end






end