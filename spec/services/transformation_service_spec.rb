require 'rails_helper'

RSpec.describe TransformationService do
  before :each do
    raw_data_path = 'hearing.events.hearing-resulted-convictionAtTrial.json'
    test_data_path = 'hearing.events.hearing-resulted-convictionAtTrial-transformed.json'
    @data = read_test_json(raw_data_path)
    @test_transformed_data = read_test_json(test_data_path)
  end

  it 'can convert common platform json' do
    transformed_data = TransformationService.transform(@data)
    expect(transformed_data).to eq(@test_transformed_data.to_json)
  end
end
