class AdsController < ApplicationController


  def home
  end

  def index
       # GET /ads/:id
       @ads = Ad.all
  end



  def show
     @ads = Ad.where(id: params[:id]) #display the ad once the user has clicked on the link
  end

  def new  # GET /ads/new
    @ad = Ad.new
  end

  def create # POST /ads
    @ad = Ad.new(ad_params)
    @ad.user = current_user
    @ad.save!
    redirect_to :new => 'root'
  end

  def destroy
    @ad = Ad.find(params[:id])
    @ad.destroy
    redirect_to user_path(@ad.user)
  end

  private

  def ad_params
    params.require(:ad).permit(:title, :description, :location, :city, :price_per_hour, :price_per_night, :user_id)
  end

end
