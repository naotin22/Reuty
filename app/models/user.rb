class User < ApplicationRecord
  has_many :products
  has_many :questions
  has_many :favorites
  has_many :purchases
  has_many :reports

  validates :name, presence: true
  validates :password, presence: true
  validates :mail, presence: true
  validates :mail, uniqueness: { scope: :mail, message:"このメールアドレスは既に登録されています" }
  validates :address, presence: true
end
