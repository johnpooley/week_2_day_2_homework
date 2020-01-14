class River

attr_accessor :fish

  def initialize(name)
    @name = name
    @fish = []

  end

  def fishcount
    return @fish.count
  end

  def throw_fish_in_river(new_fish)
    @fish << new_fish
  end

  def fish_out_of_water(fish)
    return @fish.delete(fish)
  end




end
