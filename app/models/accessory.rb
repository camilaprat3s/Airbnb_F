class Accessory < ApplicationRecord
  #belongs_to :user

  CATEGORY = ['bags', 'shoes', 'belts', 'others', 'exotic']
  CONDITION = ['Brand New','Just out of the box', 'Mint', 'Loved a little', 'meh']

  validates :name, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true, numericality: { greater_than: 0 }
  validates :category, inclusion: { in: CATEGORY }

  alias_attribute :price, :price_per_day
end
