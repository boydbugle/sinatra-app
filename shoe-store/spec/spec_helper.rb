ENV['RACK_ENV'] = 'test'
require("rspec")
  require("pg")
  require("sellers")
  require("shoes")

  RSpec.configure do |config|
    config.after(:each) do
      Seller.all().each() do |seller|
        seller.destroy()
        end
     Shoe.all().each() do |shoe|
        shoe.destroy()
        end
    end
  end