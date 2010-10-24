class Player
	attr_accessor :hp, :mp, :int, :const, :str, :arm, :x_pos, :y_pos, :image, :currenthp

  def initialize(opts={})
    opts[:hp] ||= 10
    opts[:mp] ||= 10
    opts[:int] ||= 10
    opts[:const] ||= 10
    opts[:str] ||= 10
    opts[:arm] ||= 10
    opts[:x_pos] ||= 0
    opts[:y_pos] ||= 0
    

    self.hp = opts[:hp]
    self.mp = opts[:mp]
    self.int = opts[:int]
    self.const = opts[:const]
    self.str = opts[:str]
    self.arm = opts[:arm]
    self.y_pos = opts[:y_pos]
    self.x_pos = opts[:x_pos]

    #self.image = image "static/warrior.gif"
  end


end

