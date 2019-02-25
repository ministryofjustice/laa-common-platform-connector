class ChangeHearingColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :hearings, :name, :court_name
  end
end
