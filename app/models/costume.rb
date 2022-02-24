class Costume < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
  validates :name, presence: true
  validates :category, presence: true
  validates :size, presence: true
  has_one_attached :photo
end
