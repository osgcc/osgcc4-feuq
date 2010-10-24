Shoes.setup do
  gem "httparty"
end

require "httparty"
require 'json'

Shoes.app do
  @text = para "Hit me!"
  button "hit the server" do
   response = HTTParty.get('http://localhost:9292/update')
   parsed_response = JSON.parse(response.body)
   @text.text = parsed_response["success"]
  end
end