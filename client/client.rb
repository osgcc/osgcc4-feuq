Shoes.setup do
  gem "httparty"
end

require "httparty"
require 'json'

Shoes.app :height => 730, :width => 1440 do

  require '../shared/player'

  @player = Player.new
  
  @player.y_pos = 360

  board = []

  800.times { board << "static/sand_1.gif" } 

  (0..39).each {|i| board[i] = "static/wall_t_1.gif"}
  (0..19).each {|i| board[i * 40 - 1] = "static/wall_r_1.gif"}
  (0..36).each {|i| board[40 + i * 20] = "static/wall_l_1.gif"}
  (0..19).each {|i| board[i * 40] = "static/wall_l_1.gif"}
  (0..39).each {|i| board[i + 760] = "static/wall_t_1.gif"}
  (0..1).each  {|i| board[320 + i * 40] = "static/sand_1.gif"}
  (0..1).each  {|i| board[340 + i * 40] = "static/sand_1.gif"}
  (0..6).each  {|i| board[272 + i] = "static/wall_t_1.gif"}
  (0..6).each  {|i| board[552 + i] = "static/wall_t_1.gif"}
  (0..5).each  {|i| board[312 + i * 40] = "static/wall_l_1.gif"}

  board[436] = "static/unicorn.gif"

  board[432] = "static/sandweird.gif"

  #board[360] = "static/Warrior.gif"

  @image_array = []

  board.each do |b| 
    image b
  end

  @player_top = 320
  @player_left = 0
  @player_image = image "static/Warrior.gif", :top => 320, :left => 0

  def move_player_up
    #player.y_pos -= 36
    #player_image.top -= 36
    @player_top -= 36
   @player_image.style :top => @player_top
  end

  def move_player_down
    @player_top += 36
    @player_image.style :top => @player_top
 end

  def move_player_right
    @player_left += 36
    @player_image.style :left => @player_left
  end

  def move_player_left
    @player_left -= 36
    @player_image.style :left => @player_left
  end

  #animate 30 do

    #input = get_input
    #update(input)

  #end

#  def get_input
    keypress do |k|
      case k
        when 'w' then move_player_up
        when 'a' then move_player_left
        when 's' then move_player_down
        when 'd' then move_player_right
	else ""
      end
    end
 # end

end
