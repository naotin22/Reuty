class Purchase < ApplicationRecord
  belongs_to :product, optional: true
  has_one :product
end
