class Warrior < Player

  def initialize(opts={})
    opts[:str] ||= 10
    opts[:const] ||= 10
    opts[:arm] ||= 10
    opts[:image_base] = "static/warrior_"
    
    super(opts)
  end

end
