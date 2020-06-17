class CartsController < ApplicationController
	def index
		@cart = current_user.cart
		@user = User.all
		@cart_items = @cart.cart_items
	end
	def create
		if current_user.present?
			@cart = current_cart(current_user)
			if @cart.cart_items.find_by_service_id(params[:welcome_page_id]).blank?
				@cart.cart_items = @cart.cart_items.new(service_id: params[:welcome_page_id])
				if @cart_items.save
					@msg = "Item Added"
				end
			else
				@msg = "Alredy present"
			end
			respond_to do |format|
				format.js{}
			end
		else
			redirect_to :user_sign_in_path, flash[:notice] = "Login First"
		end
	end	
end
