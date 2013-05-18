class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :crn
      t.integer :credits
      t.text :description
      t.text :short_description
      t.integer :dept_id

      t.timestamps
    end
  end
end
