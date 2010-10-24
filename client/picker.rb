class Picker
  def initialize slot
    slot.style :hidden => false
    
    append_to slot do
      para "what class do you want?", :left => 78
      image "static/Warrior.gif", :top => 75, :left => 150
      button "Warrior", :top => 50, :left => 125 do
        Dungeon.new self
      end
      image "static/WMage_front.gif", :top => 175, :left => 150
      button "Wizard", :top => 150, :left => 125 do
        Dungeon.new self
      end
      image "static/Warrior.gif", :top => 275, :left => 150
      button "Rogue", :top => 250, :left => 125 do
        Dungeon.new self
      end
      image "static/WMage_front.gif", :top => 375, :left => 150
      button "Priest", :top => 350, :left => 125 do
        Dungeon.new self
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