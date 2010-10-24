require 'player'

class Wizard < Player

  def initialize(opts={})
    opts[:mp] ||= 10
    super(opts)
  end

end
