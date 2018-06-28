class ChangePriceToBeIntegerInHotels < ActiveRecord::Migration[5.1]
  def change
    change_column :hotels , :price , :integer
    change_column :hotels , :rating , :integer
  end
end
