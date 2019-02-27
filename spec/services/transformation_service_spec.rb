require 'rails_helper'

RSpec.describe TransformationService do
  before :each do
    @data = read_test_json('hearing.events.hearing-resulted-convictionAtTrial.json')
    @data_transformed = read_test_json('hearing.events.hearing-resulted-convictionAtTrial-transformed.json')
  end

  it 'can convert common platform json' do
    tranformed_data = TransformationService.transform(@data)
    expect(transformed_data).to eq(@data_transformed)
  end
end
