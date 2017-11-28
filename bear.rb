class Bear

  attr_reader :name, :stomach

  def initialize(name)
    @name = name
    @stomach = []
  end

  def fishing(fish, river)
    @stomach.push(fish)
    river.remove_fish(fish)
  end

  def roar()
    return "Roar!!"
  end

end
