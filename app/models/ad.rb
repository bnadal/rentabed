class Ad < ApplicationRecord
  belongs_to :user
  has_many :bookings

  def pending?(user, ad_id)
    booking = self.bookings.where(user: user, ad: ad_id).first
    if booking.present?
      booking.status == "pending" ? true : false
    end
  end

  def declined?(user, ad_id)
    booking = self.bookings.where(user: user, ad: ad_id).first
    if booking.present?
      booking.status == "declined" ? true : false
    end
  end
end
