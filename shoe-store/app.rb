require("sinatra/activerecord") 
require("sinatra")
  require("sinatra/reloader")
  also_reload("lib/**/*.rb")
  require("./lib/sellers")
  require("./lib/shoes")
  require("pg")


get('/') do
  erb(:index)
end

get('/seller/new') do
  erb(:seller_form)
end

get('/shop/new') do
  erb(:shoe_form)
end

post('/sellers') do
  name = params.fetch("name")
  contacts =params.fetch("contacts")
  loctaion =params.fetch("location")
  @seller = Seller.new({:name => name, :contacts => contacts, :location => location})
  if @seller.save()
    redirect("/sellers/".concat(seller.id().to_s()))
  else
    erb(:index)
  end
end

get('/sellers/:id') do
  @seller = find(params.fetch("id").to_i())
  erb(:sellers)
end