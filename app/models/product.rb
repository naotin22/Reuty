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


  validate :add_error_sample
  
  def add_error_sample
    if image.blank?
      errors[:base] << "画像を挿入して下さい"
    end

    if name.blank?
      errors[:base] << "商品名を入力して下さい"
    end

    if price.blank?
      errors[:base] << "価格を入力して下さい"
    end

    if explanation.blank?
      errors[:base] << "商品説明を入力して下さい"
    end

  end
  
end


