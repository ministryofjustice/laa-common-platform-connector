require 'ostruct'
class CommonPlatformRequestService
  def self.call(common_platform_url)
    JSON.parse(HTTParty.get(common_platform_url).to_s, object_class: OpenStruct)
  end
end
