require 'spec_helper'
require 'ostruct'
require 'rails_helper'

RSpec.describe 'CommonPlatformData', type: :request do
  before do
    @common_platform_datum = CommonPlatformData.create!(common_platform_uuid:'57da63d6-39e1-43da-8c9d-46ba49800825', common_platform_json:"{'Hearing':'Test hearing Data'}", transformed_common_platform_json:"{'Hearing':'Test hearing Data Transformed'}")
  end

  describe 'requesting a transformed common platform data record' do
    it 'returns the transformed common platform data' do
      get common_platform_datum_path(@common_platform_datum.id)
      json = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(json).not_to be_empty
      expect(json['common_platform_uuid']).to eq(@common_platform_datum.common_platform_uuid) 
    end
  end
end