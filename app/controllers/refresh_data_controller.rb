class RefreshDataController < ApplicationController
  def call_common_platform
    data =  CommonPlatformRequestService.call(ENV['REFRESH_DATA_API'])
    transformedData = TransformationService.new(BasicTransformer.new).transform(data)
    commonPlatformData = CommonPlatformData.new(common_platform_uuid: '1',
                                                common_platform_json: data,
                                                transformed_common_platform_json: transformedData)
    if commonPlatformData.valid?
      commonPlatformData.save!
      render json: '{"status":"updated"}'
    else
      render json: '{"status":"an error occured"}'
    end
  end
end
