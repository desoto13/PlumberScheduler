class PlumbingJob < ApplicationRecord
  belongs_to :client
  belongs_to :plumber
end
