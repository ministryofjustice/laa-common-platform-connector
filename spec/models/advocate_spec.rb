require 'rails_helper'

RSpec.describe Advocate, type: :model do
  describe 'basic validation' do
    it { should validate_presence_of(:first_name)}
    it { should validate_presence_of(:last_name)}
    it { should validate_presence_of(:organisation_name)}
    it { should validate_presence_of(:status)}
  end
end
