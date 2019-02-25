class RefreshDataController < ApplicationController
  def call_common_platform
    data =  CommonPlatformRequestService.call("http://localhost:4567/hearings/1")
    hearing = ConverterService.map(data)
    if hearing.valid?
      hearing.save!
      render plain: 'data updated'
    else
      render plain: 'an error occurd'
    end
  end
end
