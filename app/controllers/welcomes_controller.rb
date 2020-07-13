class WelcomesController < ApplicationController
  def index
    @services = Service.all
    
   
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
