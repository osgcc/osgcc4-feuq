Shoes.setup do
  gem "httparty"
end

require "httparty"
require 'json'

Shoes.app :height => 730, :width => 1296 do

  require '../shared/player'

  @player = Player.new
  
  @player.y_pos = 360

  board = []

  720.times { board << "static/sand_1.gif" } 

  (0..35).each {|i| board[i] = "static/wall_t_1.gif"}
  (0..20).each {|i| board[i * 36 - 1 ] = "static/wall_r_1.gif"}
  (0..19).each {|i| board[i * 36] = "static/wall_l_1.gif"}
  (2..37).each {|i| board[i * 18] = "static/wall_l_1.gif"}
  (0..34).each {|i| board[i + 684] = "static/wall_t_1.gif"}
  (0..1).each  {|i| board[324 + i * 36] = "static/sand_1.gif"}
  (0..1).each  {|i| board[342 + i * 36] = "static/sand_1.gif"}
  (0..6).each  {|i| board[280 + i] = "static/wall_t_1.gif"}
  (0..6).each  {|i| board[460 + i] = "static/wall_t_1.gif"}
  (0..3).each  {|i| board[316 + i * 36] = "static/wall_l_1.gif"}

  board[357] = "static/unicorn.gif"

  board[352] = "static/sandweird.gif"

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
