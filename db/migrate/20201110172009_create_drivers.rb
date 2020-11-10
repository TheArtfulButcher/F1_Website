class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
      t.string :name
      t.integer :age
      t.integer :titles
      t.integer :wins
      t.references :teams, foreign_key: true

      t.timestamps
    end
  end
end
