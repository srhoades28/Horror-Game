require_relative "Scenes.rb"

class Runner

  @@scenes = [Porch.new(),
    Living_Room.new(),
    Kitchen.new(),
    Hallway.new(),
    Back_Yard.new(),
    Death.new(),
    Win.new()]

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
    next_scene = @@scenes[@@counter].run()
    return next_scene
  end

  def play()
    @@scenes.each do |scene|
      var = scene.run()
      if var == "Next"
        self.advance_counter()
      elsif var == "Death"
        @@scenes[5].run()
        break
      else
        @@scenes[6].run()
        break
      end
    end
  end

end
