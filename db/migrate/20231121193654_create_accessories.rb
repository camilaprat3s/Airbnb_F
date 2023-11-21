class CreateAccessories < ActiveRecord::Migration[7.1]
  def change
    create_table :accessories do |t|
      t.string :location
      t.float :price
      t.boolean :availability
      t.text :description
      t.string :condition

      t.timestamps
    end
  end
end
