require 'player'

class Warrior < Player

  def initialize(opts={})
    opts[:str] ||= 10
    opts[:const] ||= 10
    opts[:arm] ||= 10
    super(opts)
  end

end
