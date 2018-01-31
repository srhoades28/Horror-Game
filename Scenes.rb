class Scene

  @@advance = false

end

class Porch < Scene

  def initialize()

  end

  def run()
    puts "-------------------------------------------------------------------------------------------"
    puts "You arrived at a creepy home in the woods looking for your lost friend."
    puts "Do you open the door? (Yes, No)"
    puts ">>"
    puts "-------------------------------------------------------------------------------------------"

    while @@advance == false
      response = $stdin.gets.chomp()
      if response == "Yes"
        @@advance = true
        return "Next"
      elsif response == "No"
        puts "-------------------------------------------------------------------------------------------"
        puts "You turn around to run away, but slip and fall into a woodchipper. "
        puts "-------------------------------------------------------------------------------------------"
        return "Death"
        @@advance = true
      else
        @@advance == false
        puts "-------------------------------------------------------------------------------------------"
        puts "Enter a valid response you numbskull."
        puts "-------------------------------------------------------------------------------------------"
      end
    end
  end
end

class Living_Room < Scene

  def initialize()
  end

  def run()
    puts "-------------------------------------------------------------------------------------------"
    puts "The door creaks open to a large dark room. "
    puts "Something smells bad, like rotting food and burnt toast. "
    puts "You look to your left and you see a little girl standing in the middle of the room. "
    puts "She is looking at the floor. In her left hand is a knife with blood dripping from the blade. "
    puts "What do you do? (Tell a joke, Run, Attack)"
    puts ">>>"
    puts "-------------------------------------------------------------------------------------------"

    advance = false
    while advance == false
      response = $stdin.gets.chomp()
      if response == "Attack"
        puts "-------------------------------------------------------------------------------------------"
        puts "You punt the little girl into a window that shatters and sends her flaily. The knife falls from her hand and you hear"
        puts "a thud outside. Way to go, you just kicked a child, jerk. "
        puts "-------------------------------------------------------------------------------------------"
        advance = true
        return "Next"
      elsif response == "Tell a joke"
        puts "-------------------------------------------------------------------------------------------"
        puts "You tell the little girl a joke. She parts her hair, looks up, and grins with a mouth"
        puts "full of razor sharp teeth. With a cackle she lunges at you and stabs your face off. "
        puts "-------------------------------------------------------------------------------------------"
        advance = true
        return "Death"
      elsif response == "Run"
        puts "-------------------------------------------------------------------------------------------"
        puts "You run away from the little girl. She cowers in fear and just before you hit her, you realize you "
        puts "are attacking a child. She is crying and you ask her if she is okay. She parts her hair and looks"
        puts "up with a deadly grin. She lunges at you and stabs your face off. "
        puts "-------------------------------------------------------------------------------------------"
        advance = true
        return "Death"
      else
        advance = false
        puts "-------------------------------------------------------------------------------------------"
        puts "The is not a valid response. Please stop being an idiot."
        puts ">>>"
        puts "-------------------------------------------------------------------------------------------"
      end
    end
  end
end

class Kitchen < Scene

  def run()

    puts "-------------------------------------------------------------------------------------------"
    puts "As the girl crashes out of the window, you sprint into the kitchen.  "
    puts "The light is dim, and a swinging lightbulb flickers. "
    puts "In the corner of the room a massive spider glares at you with it's menacing eyes.  "
    puts "The spider rears it's hairy body and starts pumping venom from it's massive fangs... "
    puts "What do you do?(fight, run, dodge)"
    puts ">>>"
    puts "-------------------------------------------------------------------------------------------"

    advance = false
    while advance == false
      response = $stdin.gets.chomp()
      if response == "fight"
        puts "-------------------------------------------------------------------------------------------"
        puts "You grab a lazy susan from the counter and deflect the stream of molten hot spider venom. "
        puts "You throw the lazy susan at hit the spider right in the eyes, blinding it long enough for you to escape to the back yard. "
        puts "Well done. "
        puts "-------------------------------------------------------------------------------------------"
        advance = true
        return "Next"
      elsif response == "run"
        puts "-------------------------------------------------------------------------------------------"
        puts " You try to run, but the spider is quicker. The spider catches you and impales you with a huge hook of a claw. "
        puts "You really such at this. "
        puts "-------------------------------------------------------------------------------------------"
        advance = true
        return "Death"
      elsif response == "dodge"
        puts "-------------------------------------------------------------------------------------------"
        puts "You try to dodge the spider venom, but it hits you square in the face. Your face melts off into a milky white substance on the floor."
        puts "You crumble to the floor and the spider feasts on you alive.  "
        puts "-------------------------------------------------------------------------------------------"
        advance = true
        return "Death"
      else
        advance = false
        puts "-------------------------------------------------------------------------------------------"
        puts "The is not a valid response. Please stop being an idiot."
        puts ">>"
        puts "-------------------------------------------------------------------------------------------"
      end
    end
  end
end

class Back_Yard < Scene

  def run()
    puts "-------------------------------------------------------------------------------------------"
    puts "You run into to back yark and see zombies rising from the ground all around you. "
    puts "On an upside down trash can is are some rags and bottles and a can of gasoline. "
    puts "There is a truck on the side of the house that maybe you can get to. "
    puts "The zombies are closing in...What do you do?(Firebomb, Escape, Fight)"
    puts "-------------------------------------------------------------------------------------------"

    advance = false
    while advance == false
      response = $stdin.gets.chomp()
      if response == "Firebomb"
        puts "-------------------------------------------------------------------------------------------"
        puts "You pour gasoline into the bottles quickly and stuff the rags in as fast as you can. "
        puts "You take the lighter out of your pocket and light up the first bottle. "
        puts "You huck it in the middle and athe zombies and they explode in fire"
        puts "You throw two more, and then one into the house. You hear the spider squeal with pain as the molotov explodes in the kitchen. "
        puts "You run to the truck, and find your friend in the front seat shaking with fear."
        puts "The keys drop from glare protector, and you fire up the truck. "
        puts "Let's get the fuck out of here. "
        puts "!!! YOU WIN !!!"
        puts "-------------------------------------------------------------------------------------------"
        advance = true
        return "Win"
      elsif response == "Escape"
        puts "-------------------------------------------------------------------------------------------"
        puts "You run for the truck, but an arm shoots up from the groun and clings to your leg. "
        puts "Another arm, another arm, and then a head surfaces from the dirt and bites down hard on you foot."
        puts "You look down, and you no longer have a right foot. "
        puts "Zombies encircle you and start eating you alive. Tough break. "
        puts "-------------------------------------------------------------------------------------------"
        advance = true
        return "Death"
      elsif response == "Fight"
        puts "-------------------------------------------------------------------------------------------"
        puts "You try to fight the first zombie you see, but the rest swarm you and eat your face. "
        puts "You didn't really think you could fight zombies bare-handed, did you?"
        puts "-------------------------------------------------------------------------------------------"
        advance = true
        return "Death"
      else
        advance = false
        puts "-------------------------------------------------------------------------------------------"
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
    puts "-------------------------------------------------------------------------------------------"
    puts "You dies..."
  end
end
class Win < Scene

  def run()
    puts "-------------------------------------------------------------------------------------------"
    puts "You wins..."
  end
end
