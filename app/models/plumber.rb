class Plumber < ApplicationRecord
  has_many :plumbing_jobs
  has_many :clients, through: :plumbing_jobs
end
