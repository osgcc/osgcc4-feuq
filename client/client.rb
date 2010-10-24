Shoes.setup do
  gem "httparty"
end

require "httparty"
require 'json'
require './picker'
require './dungeon' 


window :height => 730, :width => 1296 do
  
  extend HasPicker
    
  @main_flow = flow :hidden => true do; end

  init_picker @main_flow, @main_flow
  
  def replace &blk
    self.clear do
      self.app do 
        self.append do
          self.instance_eval &blk
        end 
      end
    end
  end
end
