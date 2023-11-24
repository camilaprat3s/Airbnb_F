class AddImageToAccessories < ActiveRecord::Migration[7.1]
  def change
    add_column :accessories, :image, :string
  end
end
