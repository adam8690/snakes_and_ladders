require('minitest/autorun')
require('minitest/rg')
require_relative('../snakes_ladders.rb')

class PlayerTest < MiniTest::Test

def setup 
  @player1 = Player.new("Adam")
  @player2 = Player.new("Suzanne")

  @dice = Dice.new

  @board = Board.new
end

def test_player_has_name
assert_equal("Adam", @player1.name)
end
 
def test_player_initial_position_zero
assert_equal(1, @player2.position)
end

def test_player_position_is_integer
  assert_kind_of(Fixnum, @player1.position)
end

def test_player_takes_turn
  @player1.take_turn(@board)
  refute_equal(1, @player1.position)
end

def test_multiple_player_turns_at_start_of_game_always_moves_forward
  
    @player1.take_turn(@board)
    position1 = @player1.position
    @player1.take_turn(@board)
    position2 = @player1.position
  if position1 < 94
    assert_operator(position1, :<, position2)
  end
end

#Use the test below and uncommnet the test dice code to test that landing on specific numbers causes the player to move up or down or stay put.

# def test_player_lands_on_number_and_correct_thing_happens
#   @player1.take_turn(@board)
#   assert_equal(99, @player1.position)
# end


#End of player tests.

#Dice tests

def test_dice_value_is_between_one_and_six
    assert_operator(@dice.roll, :<,  7)
    assert_operator(@dice.roll, :>, 0)
end

def test_dice_value_is_integer

  assert_kind_of(Fixnum, @dice.roll)

end

#End of dice tests

#Board Tests

def test_winning_square_equals_100
assert_equal(100, @board.winning_square)
end

def test_ladder_start_and_end_points
assert_equal(39, @board.ladders[20])
assert_equal(67, @board.ladders[48])
assert_equal(62, @board.ladders[59])
assert_equal(88, @board.ladders[69])

end

def test_snake_start_and_end_points
assert_equal(8, @board.snakes[30])
assert_equal(26, @board.snakes[44])
assert_equal(64, @board.snakes[86])
end

def test_snake_or_ladder_returns_correct_position
  assert_equal(39, @board.snake_or_ladder_position(20))
  assert_equal(8, @board.snake_or_ladder_position(30))
  assert_equal(16, @board.snake_or_ladder_position(16))
end

#End of board tests




end
