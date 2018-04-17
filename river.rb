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
end
