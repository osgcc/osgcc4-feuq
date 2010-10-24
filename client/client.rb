Shoes.setup do
  gem "httparty"
end

require "httparty"
require 'json'
require './picker'
require '../shared/player'
require '../shared/unicorn'
require './dungeon'
require './battle' 

window :height => 730, :width => 1296 do
      
  @main_flow = flow :hidden => true do; end

  Picker.new @main_flow
  
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
