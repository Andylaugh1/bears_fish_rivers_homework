class Bear

  attr_reader :name

  def initialize(name)
    @name = name
    @stomach = []
  end

  def bear_stomach()
    @stomach.count
  end

  def add_fish(name)
    @stomach << name
  end

  # def remove_fish(name)
  #   @river.remove_fish(name)
  # end

  def remove_fish(name)
    @river.remove_fish(name)
  end

  def roar()
    return "Rooaaaar"
  end

  def food_count(name)
    food_counter = @stomach.count
    if add_fish(name)
      return food_counter += 1
    end
  end


end
