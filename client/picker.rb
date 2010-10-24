class Picker
  def initialize slot
    slot.style :hidden => false
    
    append_to slot do
      para "what class do you want?", :left => 78
      image "static/warrior_front.gif", :top => 75, :left => 150
      button "Warrior", :top => 50, :left => 125 do
        info "warrior"
        Dungeon.new self, :warrior
      end
      image "static/wizard_front.gif", :top => 175, :left => 150
      button "Wizard", :top => 150, :left => 125 do
        Dungeon.new self, :wizard
      end
      image "static/rogue_front.gif", :top => 275, :left => 150
      button "Rogue", :top => 250, :left => 125 do
        Dungeon.new self, :rogue
      end
      image "static/white_mage_front.gif", :top => 375, :left => 150
      button "White Mage", :top => 350, :left => 125 do
        Dungeon.new self, :white_mage
      end
      
    end
  end
  
  private 
  
  def append_to slot, &blk
     slot.app do
       slot.append {self.instance_eval &blk}
     end
   end
end