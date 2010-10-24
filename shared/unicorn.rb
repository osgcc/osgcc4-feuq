class Unicorn < Player

  def initialize(opts={})
    opts[:mp] ||= 100
    opts[:hp] ||= 100
    opts[:const] ||= 2
    opts[:int]  ||= 10
    opts[:str]  ||= 11
    super(opts)
  end

def attack
 rand(5) + str
end

end
