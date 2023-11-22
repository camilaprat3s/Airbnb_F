class AddNameToAccessories < ActiveRecord::Migration[7.1]
  def change
    add_column :accessories, :name, :string
  end
end
