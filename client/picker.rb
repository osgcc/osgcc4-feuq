class Picker
  def initialize slot
    slot.style :hidden => false
    
    append_to slot do
      para "Welcome to Effing Epic Unicorn Quest!", :size => "x-large", :left => 400, :font => "Lacuna"
      para "What is your character's name?", :left => 540, :top => 100
      @name = edit_line :left => 550, :top => 150
      para "What class are you?", :top => 200, :left => 570
      image "static/warrior_front.gif", :top => 250, :left => 625
      button "Warrior", :top => 300, :left => 600 do
        Dungeon.new self, :warrior, @name.text
      end
      image "static/wizard_front.gif", :top => 350, :left => 625
      button "Wizard", :top => 400, :left => 600 do
        Dungeon.new self, :wizard, @name.text
      end
      image "static/rogue_front.gif", :top => 450, :left => 625
      button "Rogue", :top => 500, :left => 610 do
        Dungeon.new self, :rogue, @name.text
      end
      image "static/white_mage_front.gif", :top => 550, :left => 625
      button "White Mage", :top => 600, :left => 590 do
        Dungeon.new self, :white_mage, @name.text
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