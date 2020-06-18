class CartitemsController < ApplicationController
	before_action :set_cart, only: [:create, :destroy]
   
  def create
  	#@cart_items =CartItem.all
    end
end
