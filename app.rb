# app.rb

require "sinatra"
require "sinatra/reloader" if development?

# 1. list of shirts
# 2. single shirt page
# 3. post to add shirt to shopping cart
# 4. checkout page

# /tshirts/1  -> Deep V
# /tshirts/2  -> Ed Hardy
# /tshirts/3  -> Cat T-Shirt
#                    1                2                    3
inventory = [ "Deep V T-Shirt", "Ed Hardy T-Shirt", "Cat T-Shirt" ]

get "/" do
  @shirts = inventory

  erb(:tshirts)
end

get "/tshirts/:tshirt_id" do
  @tshirt_id = params[:tshirt_id].to_i
  @tshirt_type = inventory[@tshirt_id - 1]

  erb(:tshirt_page)
end
