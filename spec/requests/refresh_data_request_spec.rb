require 'spec_helper'

RSpec.describe 'Refresh data request spec' do
  it 'can update data from the API' do
    get('/refreshdata')
    expect(JSON.parse(response.body)['status']).to eq 'updated'
  end
end
