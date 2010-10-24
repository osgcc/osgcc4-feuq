class Unicorn < Player

  def initialize(opts={})
   # opts[:mp] ||= 999999
    opts[:hp] ||= 20
   # opts[:const] ||= -5
    super(opts)
  end

end
