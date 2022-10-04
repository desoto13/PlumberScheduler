class PlumbingJob < ApplicationRecord
  belongs_to :client
  belongs_to :plumber

  validates :appointment_date, presence: true
  validates :plumber_id, uniqueness: { scope: [:client_id, :appointment_date], message: 'Only one client per day' }
end
