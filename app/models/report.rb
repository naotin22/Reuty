class Report < ApplicationRecord
  belongs_to :product, optional: true
  belongs_to :user, optional: true
end
