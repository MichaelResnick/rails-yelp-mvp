class Review < ApplicationRecord
  belongs_to :restaurant, dependent: :destroy
  validates :restaurant_id, presence: true
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: [1,2,3,4,5]}
end
