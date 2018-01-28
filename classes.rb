class GameMap

  def initialize(new_map)
    @map = new_map
  end


end

class GameEngine

end

class Scene

  @scenes = ["Porch",
    "Living Room",
    "Kitchen",
    "Hallway",
    "Back Yard"]

  def initialize(GameMap.new())
  end

  def current_scene()
  end

  def next_scene()
  end


end
