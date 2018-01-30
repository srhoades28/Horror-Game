class GameMap
  @@counter = 0

  @@scenes = ["Porch",
    "Living_Room",
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

  def get_advance_scenario(str)
    return next_scene = str
  end



end

class Porch < Scene

  def initialize()
    puts "Do you open the door?"
    puts ">>"

    response = $stdin.gets.chomp()
    advance = false

    while advance == false

      if response == "Yes"
        return "Living_Room"
      else
        puts "You turn around to run away, but slip and fall into a woodchipper. "
        return "Death"
      end

    end

  end

end

class Living_Room < Scene

  def initialize()

    puts "The door creaks open to a large dark room. "
    puts "Something smells bad, like rotting food and burnt toast. "
    puts "You look to your left and you see a little girl standing in the middle of the room. "
    puts "She is looking at the floor. In her left hand is a knife with blood dripping from the blade. "
    response = $stdin.gets.chomp()
    advance = false
    while advance == false
      if response == "punt girl"
        puts "You punt the little girl across the room. The knife falls from her hand and she hits the floor"
        puts "with a thud. Good job"
        advance = true
        return "Kitchen"
      elsif response == "tell a joke"
        puts "You tell the little girl a joke. She parts her hair, looks up, and grins with a mouth"
        puts "full of razor sharp teeth. With a cackle she lunges at you and stabs your face off. "
        advance = true
        return "Death"
      elsif response == "attack"
        puts "You attack the little girl. She cowers in fear and just before you hit her, you realize you "
        puts "are attacking a child. She is crying and you ask her if she is okay. She parts her hair and looks"
        puts "up with a deadly grin. She lunges at you and stabs your face off. "
        advance = true
        return "Death"
      else
        advance = false
        puts "The is not a valid response. Please stop being an idiot."
        puts ">>"
      end
    end

  end

end

class Kitchen < Scene

end

class Hallway < Scene

end

class Back_Yard < Scene

end


map1 = GameMap.new()
current_scene = map1.current_scene
next_scene = map1.next_scene
puts next_scene
