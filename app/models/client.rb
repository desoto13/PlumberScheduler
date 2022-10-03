class Client < ApplicationRecord
  has_many :plumbing_jobs
  has_many :plumbers, through: :plumbing_jobs
end
