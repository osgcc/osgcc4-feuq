require 'player'

class Rogue < Player
	
	def initialize(opts={})
		opts[:mp] ||= 0
		super(opts)
	end
	
end
		
		
