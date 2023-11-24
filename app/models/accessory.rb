class Accessory < ApplicationRecord
  include PgSearch::Model
  multisearchable against: [:name, :description, :category, :condition, :location]
  #belongs_to :user

  CATEGORY = ['bags', 'shoes', 'belts', 'others', 'exotic', 'misc', 'footwear', 'clothes', 'jewllery']
  CONDITION = ['Brand New','Just out of the box', 'Mint', 'Loved a little', 'meh', 'worn out', 'on fire']

  validates :name, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true, numericality: { greater_than: 0 }
  validates :category, inclusion: { in: CATEGORY }

  alias_attribute :price, :price_per_day

  def reindex
    PgSearch::Multisearch.rebuild(self)
  end

  def self.search(query)
    where("name LIKE ? OR description LIKE ?", "%#{query}%", "%#{query}%")
  end

end
