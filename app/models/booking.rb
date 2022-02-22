class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :costume
  validates :status, :start_date, :end_date, presence: true
  validates :status, inclusion: { in: ["pending", "accepted", "cancelled"] }
  validate :start_date_future?
  validate :end_date_after_start_date

  private


  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date < start_date
      errors.add(:end_date, "must be after the start date")
    end
  end

  def start_date_future?
    if start_date < Date.today
      errors.add(:start_date, "can't be in the past")
    end
  end
end
