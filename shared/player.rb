class Player
	attr_accessor :hp, 
	              :mp, 
	              :int, 
	              :const, 
	              :str, 
	              :arm, 
	              :x_pos, 
	              :y_pos, 
	              :image, 
	              :currenthp,
	              :image_base,
	              :name

  def initialize(opts={})
    opts[:hp] ||= 10
    opts[:mp] ||= 10
    opts[:int] ||= 10
    opts[:const] ||= 10
    opts[:str] ||= 10
    opts[:arm] ||= 10
    opts[:x_pos] ||= 0
    opts[:y_pos] ||= 360
    opts[:image_base] ||= "static/warrior_"
    opts[:name] ||= "Nobody"
    

    self.hp = opts[:hp]
    self.mp = opts[:mp]
    self.int = opts[:int]
    self.const = opts[:const]
    self.str = opts[:str]
    self.arm = opts[:arm]
    self.y_pos = opts[:y_pos]
    self.x_pos = opts[:x_pos]
    self.image_base = opts[:image_base]
    self.name = opts[:name]
  end
  
  def method_missing(m, *args, &blk)
    if m =~ /image_(\w+)/
      image_base + $1 + ".gif"
    else
      super(m, args, blk)
    end
  end

  def to_s
    name + " the " + self.class.to_s
  end

end

