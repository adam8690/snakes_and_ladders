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
assert_equal(0, @player2.position)
end

def test_player_position_is_integer
  assert_kind_of(Fixnum, @player1.position)
end

def test_player_takes_turn
  @player1.take_turn
  refute_equal(0, @player1.position)
end

def test_multiple_player_turns
  @player1.take_turn
  position1 = @player1.position
  @player1.take_turn
  position2 = @player1.position
  assert_operator(position1, :<, position2)
end

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

def test_board_has_ladder_at_20_goes_to_39
assert_equal(39, @board.ladders[20])
end

def test_board_has_snake_at_30_goes_to_8
assert_equal(8, @board.snakes[30])
end









end
