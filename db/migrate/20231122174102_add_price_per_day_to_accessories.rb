class AddPricePerDayToAccessories < ActiveRecord::Migration[7.1]
  def change
    add_column :accessories, :price_per_day, :decimal
  end
end
