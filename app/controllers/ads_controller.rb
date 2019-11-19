class AdsController < ApplicationController


def index
  @ads = Ads.all
end


end
