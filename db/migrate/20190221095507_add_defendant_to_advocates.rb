class AddDefendantToAdvocates < ActiveRecord::Migration[5.2]
  def change
    add_reference :advocates, :defendant, foreign_key: true
  end
end
