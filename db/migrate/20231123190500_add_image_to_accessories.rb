class AddImageToAccessories < ActiveRecord::Migration[7.1]
  def change
    add_column :accessories, :image_url, :string
  end
end
