require 'rails_helper'

RSpec.describe PlumbingRequest, type: :model do
  describe 'associations' do
    it { should belong_to(:client) }
    it { should accept_nested_attributes_for(:plumbing_jobs) }
    it { should have_many(:plumbing_jobs) }
  end
end
