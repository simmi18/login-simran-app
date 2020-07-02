class CartitemsController < ApplicationController
	before_action :set_cart, only: [:create, :destroy]
   
  def index
  	@cart_items =CartItem.all
    end

end



   