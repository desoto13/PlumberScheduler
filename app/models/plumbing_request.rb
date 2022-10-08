class PlumbingRequest < ApplicationRecord
  belongs_to :client

  has_many :plumbing_jobs, dependent: :destroy

  accepts_nested_attributes_for :plumbing_jobs
end
