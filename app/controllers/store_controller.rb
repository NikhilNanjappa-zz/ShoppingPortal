class StoreController < ApplicationController
  def index
  	@products = Product.all
  	  if params[:search] #search box
        @products = Product.sear(params[:search]).order("created_at DESC")
      else
        @products = Product.order("created_at DESC")
      end
  	@cart = current_cart  	
  	@products = Product.search(params[:search], params[:page]) # paginate
  end
end
