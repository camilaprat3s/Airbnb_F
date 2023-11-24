class Accessory < ApplicationRecord
  #belongs_to :user

  CATEGORY = ['misc', 'jewellery', 'bags', 'footwear', 'clothes']

  validates :name, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true, numericality: { greater_than: 0 }
  validates :category, inclusion: { in: CATEGORY }

  alias_attribute :price, :price_per_day
end
