class Bear

attr_reader :hungry, :name, :stomach
attr_writer :stomach

  def initialize(name, species)
    @name = name
    @species = species
    @hungry = true
    @stomach = []

  end

  def is_bear_hungry
    @hungry == false unless stomach.count <=4
  end

  def bear_roar
    return "roar" unless stomach.count <=4
  end

  def bear_eats_fish(river)
    for food in river.fish
      if @hungry == true
        @stomach.push(food)
        river.fish.delete(food)
      end
    end
  end

  def bear_stomach_count
    return stomach.count
  end

end
