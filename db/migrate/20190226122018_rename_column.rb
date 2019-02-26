class RenameColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :common_platform_data, :filtered_common_platform_json, :transformed_common_platform_json
  end
end
