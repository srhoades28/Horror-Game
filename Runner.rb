require_relative "Scenes.rb"

class Runner

  @@scenes = [Porch.new(),
    Living_Room.new(),
    Kitchen.new(),
    Hallway.new(),
    Back_Yard.new()]

  @@counter = 0

  def get_counter()
    return @@counter
  end

  def advance_counter()
    @@counter += 1
  end

  def get_current_scene()
    return get_scene(self.get_counter())
  end

  def get_scene(num)
    return @@scenes[num]
  end

  def run_scene()
    @@scenes[@@counter].run()
  end

  def play()
    @@scenes.each {|scene| scene.run()} 
  end

end
