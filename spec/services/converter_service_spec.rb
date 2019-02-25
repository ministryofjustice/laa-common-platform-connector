require 'rails_helper'

RSpec.describe ConverterService do
  before :each do
    url = 'https://api.common-platform.gov/hearings/1'
    @openstruct = CommonPlatformRequestService.call(url)
  end

 end
