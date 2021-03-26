class DetailsController < ApplicationController
  # before_action :set_offer, only: [:show]
   def index
    @details = Detail.all
    @authors = Author.all
    @service = Service.all
      end
  def show
    @service = Service.find(params[:id])
     end
  #      def set_offer
  #   @offer = {}
  #   @offer[:Cleaning] = {off: ['discount', '40%'], ext: ['https://www.youtube.com/watch?v=ykUNOlD3fDQ','https://www.youtube.com/watch?v=d01TEb7Gc8Y','https://www.youtube.com/watch?v=GrF_yZKzYm4','https://www.youtube.com/watch?v=qkkqfJ916fs']}
  #   @offer[:Acservices] = {off: ['discount', '30%'], ext: ['https://www.youtube.com/watch?v=s6NHxfKUkUo','https://www.youtube.com/watch?v=uzCmysQsE7U']}
  #   @offer[:Learning] = {off: ['discount', '20%'], ext: ['https://www.youtube.com/watch?v=flU7chIYKFc&t=1s','https://www.youtube.com/watch?v=9KaRDDFm8Iw&list=PLVxBmyedTVhTRQRYeZJfVBpz_12zwHc6Z','https://www.youtube.com/watch?v=rjx0EwdwP_M','']}
  #   @offer[:Yogafitness] = {off: ['discount', '10%'], ext: ['https://www.youtube.com/watch?v=BQFHmIf2dHg','https://www.youtube.com/watch?v=VaoV1PrYft4','https://www.youtube.com/watch?v=EDbjpMq9eBg']}
  #   @offer[:Painters] = {off: ['discount', '10%'], ext: ['https://www.youtube.com/watch?v=CRXCB_3gLok','https://www.youtube.com/watch?v=8xhi85pykFo']}
  #   @offer[:Salonathome] = {off: ['discount', '10%'], ext: ['https://www.youtube.com/watch?v=tZMMbbOTjmA ','https://www.youtube.com/watch?v=7dYKFEooTAE']}
  # end
   
  def new
    @detail = Detail.new
  end

 def create
  @detail = Detail.new(detail_params)
  if @detail.save
   flash[:notice] = "Successfully added new photo!"
   redirect_to root_path
  else
   flash[:alert] = "Error adding new photo!"
   render :new
  end
 end

 private

 #Permitted parameters when creating a photo. This is used for security reasons.
 def detail_params
  params.require(:detail).permit(:title, :description, :cost, :image)
 end

end

