require 'spec_helper'

RSpec.describe 'Fake Common Platform Requedst' do
  let(:uri) { URI.parse(ENV['REFRESH_DATA_API'])}
  it 'queries hearings contributors on Common Platform' do
    response = JSON.load(Net::HTTP.get(uri))
    expect(response.first[1]['id']).to eq '57da63d6-39e1-43da-8c9d-46ba49800825'
  end

  it 'can be parsed into an openstruct' do
    response = JSON.parse(Net::HTTP.get(uri), object_class: OpenStruct)
    expect(response.hearing.courtCentre.name).to eq 'Wood Green Crown Court'
  end
end
