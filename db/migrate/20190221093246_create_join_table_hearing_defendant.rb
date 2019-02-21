class CreateJoinTableHearingDefendant < ActiveRecord::Migration[5.2]
  def change
    create_join_table :hearings, :defendants do |t|
      t.index [:hearing_id, :defendant_id]
    end
  end
end
