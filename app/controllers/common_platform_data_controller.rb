class CommonPlatformDataController < ApplicationController
  include Response

  def index
    @common_platform_data = CommonPlatformData.all
  end
  
  def show
    @common_platform_datum = CommonPlatformData.find(params[:id])
    json_response(@common_platform_datum)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_common_platform_data
    @common_platform_datum = CommonPlatformData.find(params[:id] || params[:common_platform_uuid])
  end
end