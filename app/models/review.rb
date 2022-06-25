class Review < ApplicationRecord
  belongs_to :game
  belongs_to :user

  validates :title, :content, :rating, presence: true
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }
end
