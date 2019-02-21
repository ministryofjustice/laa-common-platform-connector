require 'rails_helper'

RSpec.describe Offence, type: :model do
  describe 'basic validation' do
    it { should validate_presence_of(:title)}
    it { should validate_presence_of(:legislation)}
    it { should validate_presence_of(:wording)}
  end
end
