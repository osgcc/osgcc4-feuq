require 'player'

class Eyeball < Player

  def initialize(opts={})
    opts[:mp] ||= 450
    opts[:hp] ||= 10
    opts[:const] ||= 1
    super(opts)
  end

end
