  class ServicesController < ApplicationController
  def index
    @services = Service.all
  end
  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to services_path
    else
      render "new"
    end
  end
  
  def service_params
    params.require(:service).permit(:title, :detail, :price, :image)
  end
end