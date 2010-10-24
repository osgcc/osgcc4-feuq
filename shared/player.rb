class Player
	attr_accessor :hp, :mp, :int, :const, :str, :arm,, x:x_pos :y_pos, :image, :currenthp

  def initialize(opts={})
    opts[:hp] ||= 10
    opts[:mp] ||= 10
    opts[:int] ||= 10
    opts[:const] ||= 10
    opts[:str] ||= 10
    opts[:arm] ||= 10
    

    self.hp = opts[:hp]
    self.mp = opts[:mp]
    self.int = opts[:int]
    self.const = opts[:const]
    self.str = opts[:str]
    self.arm = opts[:arm]
    self.y_pos = 360
    self.x_pos = 0

    #self.image = image "static/warrior.gif"
  end


end

