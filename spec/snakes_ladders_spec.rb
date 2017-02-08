require('minitest/autorun')
require('minitest/rg')
require_relative('../snakes_ladders.rb')

class PlayerTest < MiniTest::Test

def setup 
  @player1 = Player.new("Adam")
  @player2 = Player.new("Suzanne")
end

def test_player_has_name
assert_equal("Adam", @player1.name)
end
 
def test_player_initial_position_zero
assert_equal(0, @player2.position)
end

#End of player tests.
















end
