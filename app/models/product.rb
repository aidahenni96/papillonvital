class Product < ApplicationRecord
  belongs_to :category
  has_many :orderProducts, dependent: :destroy
  has_many :cartProducts, dependent: :destroy
end
