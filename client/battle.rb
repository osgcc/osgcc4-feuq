class Battle
  def initialize slot
    slot.replace do
      
      cheeky_drat
      
      @unicorn = Unicorn.new
      @combatant = [@player]  
      @screen = []
      @screen << "static/combatbox.gif"
      @screen << "static/desert.gif"
      #432.times { @screen << "static/sand_1.gif" }
      
      @combatant.each do |i|

        button "Attack", :top => 50, :left => 70 do
          attack_sound
          damage = i.attack
          alert "" + i.class.to_s + " deals " + damage.to_s + " damage."
          @unicorn.hp -= damage
          if @unicorn.hp <= 0
            Win.new self, true
          end
        end
        
        button "Special", :top => 150, :left => 70 do
          special_sound
          damage = i.specAtk
          @unicorn.hp -= damage
          if @unicorn.hp <= 0
            Win.new self, true
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
