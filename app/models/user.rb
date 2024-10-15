class User < ApplicationRecord
  has_many :products
  has_many :questions
  has_many :favorites
  has_many :purchases
  has_many :reports
end
