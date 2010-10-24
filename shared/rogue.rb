class Rogue < Player
	
	def initialize(opts={})
		opts[:mp] ||= 0
		opts[:image_path] = "static/rogue_front.gif"
		super(opts)
	end
	
end
		
		
