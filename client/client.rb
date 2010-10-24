Shoes.setup do
  gem "httparty"
end

require "httparty"

Shoes.app do
  @text = para "Hit me!"
  button "hit the server" do
   response = HTTParty.get('http://localhost:9292/update')
   @text.text = response.body
  end
end