require 'rails_helper'

RSpec.describe Plumber, type: :model do
  describe 'associations' do
    it { should have_many(:plumbing_jobs) }
    it { should have_many(:clients).through(:plumbing_jobs) }
  end
  
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:address) }
    it { should validate_presence_of(:vehicle) }
    it { should validate_uniqueness_of(:name) }
    it { should validate_uniqueness_of(:address) }
    it { should validate_uniqueness_of(:vehicle) }
  end
end
