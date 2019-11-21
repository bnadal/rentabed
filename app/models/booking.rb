class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :ad

  def pending?(user, ad_id)
    self.bookings.where(user: user, ad: ad_id).first.status == "pending"
  end

  def declined?(user, ad_id)
    self.bookings.where(user: user, ad: ad_id).first.status == "declined"
  end
end
