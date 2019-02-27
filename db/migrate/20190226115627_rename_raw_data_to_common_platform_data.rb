class RenameRawDataToCommonPlatformData < ActiveRecord::Migration[5.2]
  def change
    rename_table :raw_data, :common_platform_data
    rename_column :common_platform_data, :converted_common_platform_json, :filtered_common_platform_json
  end
end
