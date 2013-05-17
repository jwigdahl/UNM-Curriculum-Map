class CreateDegreeRequirements < ActiveRecord::Migration
  def change
    create_table :degree_requirements do |t|
      t.integer :degree_plan_id
      t.string :name
      t.string :category
      t.string :min_grade
      t.boolean :crucial
      t.string :note

      t.timestamps
    end
  end
end
