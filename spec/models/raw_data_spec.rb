require 'rails_helper'

RSpec.describe RawData, type: :model do
  describe 'basic validation' do
    it { should validate_presence_of(:common_platform_uuid)}
    it { should validate_presence_of(:common_platform_json)}
  end

  it 'can store and retrieve json in the right format' do
    test_json = {name: 'jim', job: 'painter' }.to_json

    rd = RawData.create(common_platform_uuid: '1', common_platform_json: test_json)

    expect(rd.common_platform_json).to match(test_json)
  end
end
