class CommonPlatformData < ApplicationRecord
  validates :common_platform_uuid, presence: true
  validates :common_platform_json, presence: true
end
