class WelcomesController < ApplicationController
 before_action :authenticate_user!
 before_action :configure_permitted_parameters, if: :devise_controller?


  def index
    @user = User.all
    @services = Service.all
  end

 def new 
 end


 def user
 @user = User.find(params[:id]) 
 end

  def search
    # @services = Service.all
    if params[:search].blank?  
     redirect_to(root_path, alert: "Empty field!") and return  
    else  
      @parameter = params[:search].downcase  
     @results = Service.all.where("lower(title) LIKE :search", search: @parameter)  
    end  
  end
end


959450 