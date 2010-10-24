class Wizard < Player

  def initialize(opts={})
    opts[:mp] ||= 10
    opts[:image_base] = "static/wizard_"
    super(opts)
  end

end
