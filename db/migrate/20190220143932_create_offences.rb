class CreateOffences < ActiveRecord::Migration[5.2]
  def change
    create_table :offences do |t|
      t.string :title
      t.string :legislation
      t.string :wording

      t.timestamps
    end
  end
end
