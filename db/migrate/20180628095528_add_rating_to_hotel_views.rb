class AddRatingToHotelViews < ActiveRecord::Migration[5.1]
  def change
    add_column :hotel_views, :rating, :integer
  end
end
