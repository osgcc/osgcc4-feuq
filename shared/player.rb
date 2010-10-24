class Player
  attr_accessor :hp, :mp

  def initialize(opts={})
    opts[:hp] ||= 10
    opts[:mp] ||= 0

    self.hp = opts[:hp]
    self.mp = opts[:mp]
    
  end

end

