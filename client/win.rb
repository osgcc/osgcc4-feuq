class Win
  def initialize slot, win
    slot.replace do
      if win
        para "WIN", :size => "xx-large", :top => 350, :left => 610
        para "grats", :top => 400, :left => 630
      else
        para "FAIL", :size => "xx-large", :top => 350, :left => 610
      end
    end
  end
end