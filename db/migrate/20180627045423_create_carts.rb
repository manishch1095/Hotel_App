class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.references :hotel, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end