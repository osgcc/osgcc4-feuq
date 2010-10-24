class WhiteMage < Player

  def initialize(opts={})
    opts[:str] ||= 5
    opts[:const] ||= 5
    opts[:arm] ||= 3
    opts[:mp] ||= 7
    opts[:int] ||= 10
    opts[:image_base] = "static/white_mage_"    
    super(opts)
  end

end
