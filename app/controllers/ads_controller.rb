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
>>>>>>> d4ffa302af95153de8d46e9480de3d66fb2e9c2a

end
