class PlumbingJob < ApplicationRecord
  belongs_to :client
  belongs_to :plumber
  belongs_to :plumbing_request

  validates :appointment_date, presence: true
  validates :plumber_id, uniqueness: { scope: [:client_id, :appointment_date], message: 'Plumbers should only have one client per day' }
end
