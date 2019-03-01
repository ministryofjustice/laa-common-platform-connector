require 'rails_helper'
require 'basic_transformer'

RSpec.describe TransformationService do
  let(:transformer) { instance_double("Transformer", :transform => true)}
  before :each do
    setup_test_json
  end

  it 'calls a transform' do
    expect(transformer).to receive(:transform)
    TransformationService.new(transformer).transform(@data)
  end
end
