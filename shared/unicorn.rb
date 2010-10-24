require 'player'

class Unicorn < Player

  def initialize(opts={})
    opts[:mp] ||= 999999
    opts[:hp] ||= 999999
    opts[:const] ||= -5
    super(opts)
  end

end
