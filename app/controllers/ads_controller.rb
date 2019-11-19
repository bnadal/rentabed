class AdsController < ApplicationController

  def home
  end

  def index
       # GET /ads/:id
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
