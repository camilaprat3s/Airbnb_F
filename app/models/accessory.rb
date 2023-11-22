class Accessory < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true, numericality: { greater_than: 0 }

  alias_attribute :price, :price_per_day
end
