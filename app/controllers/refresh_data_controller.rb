class RefreshDataController < ApplicationController
  def call_common_platform
    data =  CommonPlatformRequestService.call("http://localhost:4567/hearings/1")
    render :json => data
  end
end
