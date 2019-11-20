class AdsController < ApplicationController


  def home
  end

  def index
       # GET /ads/:id
       @ads = Ad.all
  end



  def show
     @ads = Ad.where(user: current_user) #display the ads of the current user 
  end

  def new  # GET /ads/new
    @ad = Ad.new
  end

  def create # POST /ads
    @ad = Ad.new(title: params[:ad][:title], description: params[:ad][:description], location: params[:ad][:location], city: params[:ad][:city], price_per_hour: params[:ad][:price_per_hour], price_per_night: params[:ad][:price_per_night])
  @ad.save
  end

  def delete
  end

end
