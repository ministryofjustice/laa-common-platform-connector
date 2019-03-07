class CommonPlatformDataController < ApplicationController
  include Response

  def show
    @common_platform_datum = CommonPlatformData.find(params[:id])
    json_response(@common_platform_datum.transformed_common_platform_json)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_common_platform_data
    @common_platform_datum = CommonPlatformData.find(params[:id] || params[:common_platform_uuid])
  end
end
