require 'spec_helper'

RSpec.describe 'Fake Common Platform Requedst' do
  it 'queries hearings contributors on Common Platform' do
    uri = URI('https://api.common-platform.gov/hearings/1')

    response = JSON.load(Net::HTTP.get(uri))
    expect(response.first[1]['id']).to eq '57da63d6-39e1-43da-8c9d-46ba49800825'
  end
end