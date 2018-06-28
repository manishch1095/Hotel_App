class AddRatingToHotels < ActiveRecord::Migration[5.1]
  def change
    add_column :hotels, :rating, :number
  end
end
