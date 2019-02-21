require 'rails_helper'

RSpec.describe Offence, type: :model do
  describe 'basic validation' do
    it { should validate_presence_of(:title)}
    it { should validate_presence_of(:legislation)}
    it { should validate_presence_of(:wording)}
  end

  describe 'relationships' do
    it 'belongs to a defendant' do
      should belong_to(:defendant)
    end
  end
end
