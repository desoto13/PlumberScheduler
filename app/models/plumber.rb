class Plumber < ApplicationRecord
  has_many :plumbing_jobs
  has_many :clients, through: :plumbing_jobs

  validates :name, :address, :vehicle, presence: true, uniqueness: true
end
