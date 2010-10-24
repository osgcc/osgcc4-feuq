class WhiteMage < Player

  def initialize(opts={})
    opts[:hp] ||= 90
    opts[:mp] ||= 150
    opts[:int] ||15
    opts[:str] ||= 7
    opts[:const] ||= 4
    opts[:image_base] = "static/white_mage_"
    
    super(opts)


  end

def attack
  rand(3) + str
end


def specAtk
   if self.mp > 0
	self.hp += 20	
	self.mp -= 25
	alert "You healed for 20 hp! GOOD JOB YOU DID IT!!!!!11"
   dmg
   else 
    alert "You don't have enough mp to do that, starfox!"
   end
end
end
