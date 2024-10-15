class Product < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :product_class, optional: true
  belongs_to :purchase, optional: true
  has_many :questions
  has_many :favorites
  has_many :reports
end
