class Measurement < ApplicationRecord
  has_many :user_bras
  has_many :catalog_bras, through: :user_bras
  belongs_to :user
end
