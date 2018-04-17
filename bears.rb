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

  def remove_fish(name)
    @river.remove_fish(name)
  end

  def roar()
    return "Rooaaaar"
  end

end
