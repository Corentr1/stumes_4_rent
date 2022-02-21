class Costume < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :users
  validates :name, presence: true
  validates :category, presence: true
  validates :size, presence: true
end
