require 'rails_helper'

RSpec.describe Hearing, type: :model do
  describe 'basic validation' do
    it { should validate_presence_of(:court_name)}
    it { should validate_presence_of(:description)}
  end
end
