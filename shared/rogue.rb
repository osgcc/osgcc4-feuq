class Rogue < Player
	
	def initialize(opts={})
		opts[:mp] ||= 0
		opts[:image_base] = "static/rogue_"
		super(opts)
	end
	
end
		
		
