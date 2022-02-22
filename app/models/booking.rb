class Booking < ApplicationRecord
  has_many :users
  has_many :costumes
  validates :status, :start_date, :end_date, presence: true
  validates :start_date, comparison: { greater_than: :end_date }
  validates :status, inclusion: { in: ["pending", "accepted", "cancelled"] }
end
