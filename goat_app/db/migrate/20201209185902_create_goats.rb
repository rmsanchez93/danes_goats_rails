class CreateGoats < ActiveRecord::Migration[6.0]
  def change
    create_table :goats do |t|
      t.string :name
      t.string :age
      t.string :img
      t.integer :person_id

      t.timestamps
    end
  end
end
