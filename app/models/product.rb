class Product < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :product_classes, optional: true
  has_many :questions
  has_many :favorites
  has_many :reports
  has_many :purchases
end
