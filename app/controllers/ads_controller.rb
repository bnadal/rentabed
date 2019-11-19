class AdsController < ApplicationController


def index
  @ads = Ads.all
end

  def home
  end


  def show

  end

  def new  # GET /ads/new
    @ad = Ad.new
  end

  def create # POST /ads
    ad = Ad.create
  end

  def delete
  end

end
