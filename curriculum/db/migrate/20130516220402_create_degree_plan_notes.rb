class CreateDegreePlanNotes < ActiveRecord::Migration
  def change
    create_table :degree_plan_notes do |t|
      t.integer :degree_plan_id
      t.string :note

      t.timestamps
    end
  end
end
