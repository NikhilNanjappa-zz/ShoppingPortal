class StoreController < ApplicationController
  def index
  	@products = Product.all
  	@cart = current_cart
  	@products = Product.search(params[:search], params[:page])
  end
end
