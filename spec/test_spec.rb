require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class BusTest <Minitest::Test

  def setup
    @bear_1 = Bear.new('Brian', 'Big')
    @river_1 = River.new('Clyde')
    @fish_1 = Fish.new("Henry")
  end

  # def test_throw_fish_in_river
  # end

  def test_fish_in_river_count
    assert_equal(0, @river_1.fishcount)
  end

  def test_throw_fish_in_river
    @river_1.throw_fish_in_river(@fish_1)
    assert_equal([@fish_1], @river_1.fish)
  end

  def test_does_bear_roar
    assert_equal(nil, @bear_1.bear_roar)
  end

  def test_bear_eats_fish
    @river_1.throw_fish_in_river(@fish_1)
    @bear_1.bear_eats_fish(@river_1)
    assert_equal(1, @bear_1.bear_stomach_count)
    assert_equal([@fish_1], @bear_1.stomach)
  end

  def test_does_full_bear_roar
    @river_1.throw_fish_in_river(@fish_1)
    @bear_1.bear_eats_fish(@river_1)
    @river_1.throw_fish_in_river(@fish_1)
    @bear_1.bear_eats_fish(@river_1)
    @river_1.throw_fish_in_river(@fish_1)
    @bear_1.bear_eats_fish(@river_1)
    @river_1.throw_fish_in_river(@fish_1)
    @bear_1.bear_eats_fish(@river_1)
    @river_1.throw_fish_in_river(@fish_1)
    @bear_1.bear_eats_fish(@river_1)
    assert_equal(false, @bear_1.is_bear_hungry)
    assert_equal("roar", @bear_1.bear_roar)

  end




end
