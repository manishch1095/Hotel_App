class AddIndexToCarts < ActiveRecord::Migration[5.1]
  def change
  add_index :carts, [:user_id, :hotel_id] 
  end
end
