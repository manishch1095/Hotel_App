class HotelViews < ActiveRecord::Migration[5.1]
  def change
    create_table :hotel_views do |t|
      t.references :hotel, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
