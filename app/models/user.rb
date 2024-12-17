class User < ApplicationRecord
  has_many :products
  has_many :questions
  has_many :favorites
  has_many :purchases
  has_many :reports

  validates :name, presence: {message:"名前が入力されていません"}
  validates :password, presence: {message:"パスワードが入力されていません"}
  validates :mail, presence: {message:"メールアドレスが入力されていません"}
  validates :mail, uniqueness: { scope: :mail, message:"このメールアドレスは既に登録されています" }
  validates :address, presence: {message:"住所が入力されていません"}
end
