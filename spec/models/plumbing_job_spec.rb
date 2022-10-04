require 'rails_helper'

RSpec.describe PlumbingJob, type: :model do
  describe 'associations' do
    it { should belong_to(:client) }
    it { should belong_to(:plumber) }
  end

  describe 'validations' do
    it { should validate_presence_of(:appointment_date) }
    it { should validate_uniqueness_of(:plumber_id).scoped_to([:client_id, :appointment_date]).with_message('Only one client per day') }
  end
end
