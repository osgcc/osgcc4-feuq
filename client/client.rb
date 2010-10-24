Shoes.setup do
  gem "httparty"
end

require "httparty"
require 'json'

Shoes.app :height => 730, :width => 1440 do
  #@text = para "Hit me!"
  #button "hit the server" do
  # response = HTTParty.get('http://localhost:9292/update')
  # parsed_response = JSON.parse(response.body)
  # @text.text = parsed_response["success"]
  #end

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
  board[432] = "static/sandweird.gif"

  board[360] = "static/Warrior.gif"

 # 760.times {image "static/sand_1.gif"}

  board.each {|b| image b }

  # keypress do |k|
  #   case k
  #     when 'w' then alert("omg w")
  #   end
  # end


end
