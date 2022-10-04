class Client < ApplicationRecord
  has_many :plumbing_jobs
  has_many :plumbers, through: :plumbing_jobs

  validates :name, :age, :private_note, :address, presence: true
  validates :name, uniqueness: true
end
