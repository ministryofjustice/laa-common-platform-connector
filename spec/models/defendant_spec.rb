require 'rails_helper'

RSpec.describe Defendant, type: :model do
  describe 'basic validation' do
    it { should validate_presence_of(:first_name)}
    it { should validate_presence_of(:last_name)}
    it { should validate_presence_of(:date_of_birth)}
  end

  describe 'relationships' do
    it 'can have many and belong to many hearings' do
      should have_and_belong_to_many(:hearings)
    end
  end
end
