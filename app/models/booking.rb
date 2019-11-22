class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :ad
  after_save :update_ad_status
  after_destroy :make_ad_available

  def pending?(user, ad_id)
    self.bookings.where(user: user, ad: ad_id).first.status == "pending"
  end

  def declined?(user, ad_id)
    self.bookings.where(user: user, ad: ad_id).first.status == "declined"
  end

  def update_ad_status
    if self.status == "confirmed" || self.status == "pending"
      self.ad.update(status: "unavailable")
    else
      self.ad.update(status: "available")
    end
  end

  def make_ad_available
    if self.ad != nil
      self.ad.update(status: "available")
    end
  end
end
