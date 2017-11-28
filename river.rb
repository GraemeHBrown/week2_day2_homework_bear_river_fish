class River

attr_reader :name, :fish 

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

def add_fish(fish)
  @fish.push(fish)
end


end
