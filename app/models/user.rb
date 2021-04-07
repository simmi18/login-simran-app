class User < ApplicationRecord
 # before_action :configure_permitted_parameters, if: :devise_controller?

	#rolify :before_add => :before_add_method
	after_create :assign_default_role

 rolify
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	has_one :cart
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  def assign_default_role
    self.add_role(:user) if self.roles.blank?
  end


  # protected

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  # end
end

