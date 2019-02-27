class RawData < ActiveRecord::Migration[5.2]
  def change
    create_table :raw_data do |t|
      t.string 'common_platform_uuid'
      t.jsonb 'common_platform_json'
      t.jsonb 'converted_common_platform_json'
    end
  end
end
