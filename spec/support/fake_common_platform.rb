require 'sinatra/base'

class FakeCommonPlatform < Sinatra::Base

  get '/' do
    'fake common platform running'
  end

  get '/hearings/:id' do
    json_response(200, 'hearing.events.hearing-resulted-convictionAtTrial.json')
  end

  private

  def json_response(response_code, file_name)
    content_type :json
    status response_code
    File.open(File.dirname(__FILE__) + '/fixtures/' + file_name, 'rb').read
  end
end
