require 'rails_helper'

RSpec.describe Client, type: :model do
  describe 'associations' do
    it { should have_many(:plumbing_jobs) }
    it { should have_many(:plumbers).through(:plumbing_jobs) }
  end
  
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:age) }
    it { should validate_presence_of(:private_note) }
    it { should validate_presence_of(:address) }
    it { should validate_uniqueness_of(:name) }
  end
end
