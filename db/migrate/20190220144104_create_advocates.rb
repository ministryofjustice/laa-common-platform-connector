class CreateAdvocates < ActiveRecord::Migration[5.2]
  def change
    create_table :advocates do |t|
      t.string :first_name
      t.string :last_name
      t.string :status
      t.string :organisation_name

      t.timestamps
    end
  end
end
