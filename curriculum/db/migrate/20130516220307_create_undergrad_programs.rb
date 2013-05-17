class CreateUndergradPrograms < ActiveRecord::Migration
  def change
    create_table :undergrad_programs do |t|
      t.integer :dept_id
      t.string :name
      t.string :degree
      t.string :org_code

      t.timestamps
    end
  end
end
