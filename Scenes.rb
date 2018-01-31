class Scene

  @@advance = false

end

class Porch < Scene

  def initialize()

  end

  def run()
    puts "Do you open the door?"
    puts ">>"

    while @@advance == false
      response = $stdin.gets.chomp()
      if response == "Yes"
        @@advance = true
        return "Next"
      elsif response == "No"
        puts "You turn around to run away, but slip and fall into a woodchipper. "
        return "Death"
        @@advance = true
      else
        @@advance == false
        puts "Enter a valid response you numbskull."
      end
    end
  end
end

class Living_Room < Scene

  def initialize()
  end

  def run()

    puts "The door creaks open to a large dark room. "
    puts "Something smells bad, like rotting food and burnt toast. "
    puts "You look to your left and you see a little girl standing in the middle of the room. "
    puts "She is looking at the floor. In her left hand is a knife with blood dripping from the blade. "

    advance = false
    while advance == false
      response = $stdin.gets.chomp()
      if response == "punt girl"
        puts "You punt the little girl across the room. The knife falls from her hand and she hits the floor"
        puts "with a thud. Good job"
        advance = true
        return "Next"
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

  def run()

    puts "The door creaks open to a large dark room. "
    puts "Something smells bad, like rotting food and burnt toast. "
    puts "You look to your left and you see a little girl standing in the middle of the room. "
    puts "She is looking at the floor. In her left hand is a knife with blood dripping from the blade. "

    advance = false
    while advance == false
      response = $stdin.gets.chomp()
      if response == "punt girl"
        puts "You punt the little girl across the room. The knife falls from her hand and she hits the floor"
        puts "with a thud. Good job"
        advance = true
        return "Next"
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

class Hallway < Scene

  def run()

    puts "The door creaks open to a large dark room. "
    puts "Something smells bad, like rotting food and burnt toast. "
    puts "You look to your left and you see a little girl standing in the middle of the room. "
    puts "She is looking at the floor. In her left hand is a knife with blood dripping from the blade. "

    advance = false
    while advance == false
      response = $stdin.gets.chomp()
      if response == "punt girl"
        puts "You punt the little girl across the room. The knife falls from her hand and she hits the floor"
        puts "with a thud. Good job"
        advance = true
        return "Next"
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

class Back_Yard < Scene

  def run()

    puts "The door creaks open to a large dark room. "
    puts "Something smells bad, like rotting food and burnt toast. "
    puts "You look to your left and you see a little girl standing in the middle of the room. "
    puts "She is looking at the floor. In her left hand is a knife with blood dripping from the blade. "

    advance = false
    while advance == false
      response = $stdin.gets.chomp()
      if response == "punt girl"
        puts "You punt the little girl across the room. The knife falls from her hand and she hits the floor"
        puts "with a thud. Good job"
        advance = true
        return "Next"
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

class Death < Scene

  def initialize()
    return "Death"
  end

  def run()
    puts "You dies..."
  end
end
class Win < Scene

  def run()
    puts "You wins..."
  end
end
