class Warrior < Player

  attr_accessor :rage

  def initialize(opts={})
    opts[:hp] ||= 120
    opts[:mp] ||= 25
    opts[:int] ||=3 
    opts[:str] ||= 7
    opts[:const] ||= 3
    opts[:image_base] = "static/warrior_"
    
    super(opts)

    self.rage = false

  end

def attack
  if rage
    	self.hp  -= 3
        rand(24) + str
  else	
        rand(8) + str
  end
end


def specAtk
   if self.mp > 0	
	self.rage = true
        self.str = 4
	self.mp -= 25
        alert "The warrior goes into a rage, changing his damage to 4-28 and making him take 3 damage every turn."
   else 
    alert "You don't have enough mp to do that, starfox!"
   end
end
end
