class Review < ActiveRecord::Base

  validates :product_id, presence: true
  validates :user_id, presence: true
  validates :description, presence: true, allow: nil
  validates :rating, presence: true
end
