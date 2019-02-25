require 'rails_helper'

RSpec.describe RawData, type: :model do
  describe 'basic validation' do
    it { should validate_presence_of(:common_platform_uuid)}
    it { should validate_presence_of(:common_platform_json)}
  end
end
