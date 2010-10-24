class Battle
  def initialize slot
    slot.replace do
      @unicorn = Unicorn.new
      @combatant = [@player, @unicorn]  
      @screen = []
      @screen << "static/combatbox.gif"
      @screen << "static/desert.gif"
      #432.times { @screen << "static/sand_1.gif" }
      turn = true
      @combatant.each do |i|
        if turn
          button "Attack", :top => 50, :left => 70 do
            alert "" + @player.to_s + " deals " + @player.str.to_s + " damage."
            alert @unicorn.hp.to_s
            @unicorn.hp -= @player.str
	    alert @unicorn.hp.to_s
          end
          button "Special", :top => 150, :left => 70 do
          end
        end
      end
      @screen.each do |b| 
        image b
      end
      @war_image = image @player.image_big, :top=> 365, :left => 188
      @health_image = image "static/health100.gif", :top=> 550, :left =>205
      @uni_image = image "static/bigUnicorn1.gif", :top => 330, :left => 890
      @health_image = image "static/health100.gif", :top=> 550, :left =>905
      @charlie_image = image "static/charlie.gif", :top=> 575, :left =>901
      #@desert_image = image "static/desert.gif", :top=> 575, :left =>901

    end
  end
end