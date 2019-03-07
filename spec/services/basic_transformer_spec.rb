require 'rails_helper'
require 'basic_transformer'

RSpec.describe BasicTransformer do
  let(:transformer) { instance_double("Transformer", :transform => true)}
  before :each do
    setup_test_json
  end

  it 'can convert common platform json' do
    transformer = BasicTransformer.new
    transformed_data = transformer.transform(@data)
    expect(transformed_data).to eq(@test_transformed_data.to_json)
  end
end
