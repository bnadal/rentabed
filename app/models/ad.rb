class Ad < ApplicationRecord
  belongs_to :user
  has_many :bookings

include PgSearch::Model
  pg_search_scope :search_by_title,
    against: [ :title ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

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
