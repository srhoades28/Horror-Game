class GameMap
  @@counter = 0

  @@scenes = ["Porch",
    "Living Room",
    "Kitchen",
    "Hallway",
    "Back Yard"]

  def initialize()
  end

  def first_scene()
    return @@scenes[0]
  end

  def next_scene()
    i = @@counter
    return @@scenes[i + 1]
  end

  def current_scene()
    i = @@counter
    return @@scenes[i]
  end

  def advance_counter()
    @@counter += 1
    return @@counter
  end

end

class GameEngine

end

class Scene

  #def initialize()
    #current_map_scene = GameMap.first_scene()
  #  return current_map_scene
  #end

  def current_scene()
  end

  def next_scene()
  end

end

class Porch < Scene

end

class Living_Room < Scene

end

class Kitchen < Scene

end

class Hallway < Scene

end

class Back_Yard < Scene

end




map1 = GameMap.new()
first_scene = map1.first_scene()
puts "#{first_scene}"
current_scene = map1.current_scene()
puts "#{current_scene}"
next_scene = map1.next_scene()
puts "#{next_scene}"
