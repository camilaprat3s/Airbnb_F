class AddUserIdToAccessories < ActiveRecord::Migration[7.1]
  def change
    add_column :accessories, :user_id, :integer
  end
end
