class Wizard < Player

  def initialize(opts={})
    opts[:hp] ||= 80
    opts[:mp] ||= 100
    opts[:int] ||=10 
    opts[:str] ||= 3
    opts[:const] ||= 1
    opts[:image_base] = "static/wizard_"
    
    super(opts)


  end

def attack
  rand(6) + str
end


def specAtk
   if self.mp > 0
	num = rand(3) + 1
        if num = 1
	  dmg = 30
	  alert "Critical hit! You deal 30 damage!"
        elsif num = 2	
	  dmg = 20
	  alert "Your fireball hit for 20 damage!"
        else
	  alert "Your fireball missed, LAWLZ."
	  dmg = 0
	end	
	self.mp -= 25
   dmg
   else 
    alert "You don't have enough mp to do that, starfox!"
   end
end
end