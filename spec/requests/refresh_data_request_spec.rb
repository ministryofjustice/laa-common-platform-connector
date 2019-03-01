require 'spec_helper'

RSpec.describe 'Refresh data request spec' do
  it 'can be parsed into an openstruct' do
    get('/refreshdata')
    expect(response.body).to eq 'data updated'
  end
end
