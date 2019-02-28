require 'rails_helper'

RSpec.describe CommonPlatformRequestService do
  let(:url){ 'https://api.common-platform.gov/hearings/1' }

  describe 'get data from mockservice' do
    it 'calls mock service and returns an openstruct od data' do
      @openstruct = CommonPlatformRequestService.call(url)
      expect(@openstruct).to be_an_instance_of(OpenStruct)
      expect(@openstruct.hearing.courtCentre.name).to eq('Wood Green Crown Court')
    end
  end
end
