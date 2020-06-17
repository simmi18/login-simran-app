class ApplicationController < ActionController::Base
 before_action :authenticate_user!

 def current_cart(user)
 	if user.cart.present?
 		@cart = user.cart
 	else
 		cart = user.create_cart
 	end
 	cart
 end
end
