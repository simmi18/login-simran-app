class DetailsController < ApplicationController
  before_action :set_offer, only: [:show]
  def index
  end
  def show
    @service = Service.find(params[:id])
     end

     def set_offer
    @offer = {}
    @offer[:Cleaning] = {off: ['discount', '40%'], ext: ['https://www.youtube.com/watch?v=ykUNOlD3fDQ']}
    @offer[:Acservices] = {off: ['discount', '30%'], ext: ['https://www.youtube.com/watch?v=s6NHxfKUkUo']}
    @offer[:Learning] = {off: ['discount', '20%'], ext: ['https://www.youtube.com/watch?v=flU7chIYKFc&t=1s']}
    @offer[:Yogafitness] = {off: ['discount', '10%'], ext: ['https://www.youtube.com/watch?v=BQFHmIf2dHg']}
    @offer[:Painters] = {off: ['discount', '10%'], ext: ['https://www.youtube.com/watch?v=CRXCB_3gLok']}
    @offer[:Salonathome] = {off: ['discount', '10%'], ext: ['https://www.youtube.com/watch?v=tZMMbbOTjmA ']}
  end
end
