class UserBra < ApplicationRecord
  belongs_to :measurement
  belongs_to :catalog_bra
end
