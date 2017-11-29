class CatalogBra < ApplicationRecord
  has_many :user_bras
  has_many :measurements, through: :user_bras
end
