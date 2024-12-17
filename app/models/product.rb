class Product < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :product_class, optional: true
  belongs_to :purchase, optional: true
  has_many :questions
  has_many :favorites
  has_many :reports

  validates :image, presence: true
  validates :name, presence: true
  validates :price, presence: true
  validates :explanation, presence: true

  def favorite?(user_id)
    self.favorites.where(user_id: user_id).any?
  end


end


