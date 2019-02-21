class AddDefendantToOffences < ActiveRecord::Migration[5.2]
  def change
    add_reference :offences, :defendant, foreign_key: true
  end
end
