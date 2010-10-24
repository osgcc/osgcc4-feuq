require 'player'

class Priest < Player

  def initialize(opts={})
    opts[:str] ||= 5
    opts[:const] ||= 5
    opts[:arm] ||= 3
    opts[:mp] ||= 7
    opts[:int] ||= 10
    super(opts)
  end

end
