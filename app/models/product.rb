class Product < ApplicationRecord
  belongs_to :user
  has_many   :images, dependent: :destroy
  validates :name, :explanation, :category, :condition, :postage, :region, :shipping_days, :price, presence: true
  validates :price, numericality: { only_integer: true , greater_than: 0, less_than: 9999999 }
end
