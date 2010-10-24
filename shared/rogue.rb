class Rogue < Player
	
	def initialize(opts={})
		opts[:hp] ||= 70
		opts[:mp] ||= 50
		opts[:int] ||=5 
		opts[:str] ||= 14
		opts[:const] ||= 2
		opts[:image_base] = "static/rogue_"
		super(opts)
	end

	def attack
        rand(6) + str
	end

def specAtk
	
     if self.mp > 0
        dmg = 2* (rand(6) + str)
        self.hp  -= 13
        alert "The rogue stealths behind his target, hitting for " + dmg.to_i.to_s
        self.mp -= 25
        dmg
   else 
    alert "You don't have enough mp to do that, starfox!"
   end
end
end
	

		
		
