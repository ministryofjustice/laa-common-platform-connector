require 'rails_helper'

RSpec.describe Hearing, type: :model do
  describe 'basic validation' do
    it { should validate_presence_of(:court_name)}
    it { should validate_presence_of(:description)}
  end

  describe 'relationships' do
    it 'can have many and belong to many defendants' do
      should have_and_belong_to_many(:defendants)
    end
  end
end
