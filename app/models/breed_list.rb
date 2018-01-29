class BreedList < ApplicationRecord
  belongs_to :user
  validates :breed, presence: true
  validates :gender, presence: true
  validates :weight, presence: true
  validates :height, presence: true
end
