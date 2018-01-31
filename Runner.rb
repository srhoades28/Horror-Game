class Runner

  @@scenes = ["Porch",
    "Living_Room",
    "Kitchen",
    "Hallway",
    "Back Yard"]

  @@counter = 0

  def advance_counter()
    @@counter += 1
  end
  def get_scene(num)
    return @@scenes[num]
  end

  def run_scene(scene)
    scene = map.get_scene(@@counter)
    puts scene.class
  end
end
