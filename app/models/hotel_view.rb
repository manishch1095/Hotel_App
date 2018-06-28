class HotelView < ApplicationRecord
  default_scope -> { order(created_at: :desc) }
  belongs_to :hotel
  belongs_to :user
end
