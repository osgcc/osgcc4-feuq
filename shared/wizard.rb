class Wizard < Player

  def initialize(opts={})
    opts[:mp] ||= 10
    opts[:image_path] = "static/wizard_front.gif"
    super(opts)
  end

end
