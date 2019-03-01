class RefreshDataController < ApplicationController
  def call_common_platform
    data =  CommonPlatformRequestService.call("http://localhost:4567/hearings/1")
    transformedData = TransformationService.new(BasicTransformer.new).transform(data)
    commonPlatformData = CommonPlatformData.new(common_platform_uuid: '1',
                                                common_platform_json: data,
                                                transformed_common_platform_json: transformedData)
    if commonPlatformData.valid?
      commonPlatformData.save!
      render plain: 'data updated'
    else
      render plain: 'an error occurd'
    end
  end
end
