class River

  attr_reader :name

  def initialize(name, fish_held)
    @name = name
    @fish_held = fish_held
  end

  def number_of_fish()
    @fish_held.count
  end

  def remove_fish(name)
    @fish_held.delete(name)
  end

  def fish_count(name)
    fish_counter = @fish_held.count
    if remove_fish(name)
      return fish_counter -= 1
    end
  end
end
