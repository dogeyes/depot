class StoreController < ApplicationController
  def index
  	@cart = current_cart
  	@products = Product.order(:title)
  	if session[:counter].nil?
  		session[:counter] = 1;
  	else
  		session[:counter] += 1;
  	end
  	@counter = session[:counter]
  end
end
