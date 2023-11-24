class AddCategoryToAccessories < ActiveRecord::Migration[7.1]
  def change
    add_column :accessories, :category, :string
  end
end
