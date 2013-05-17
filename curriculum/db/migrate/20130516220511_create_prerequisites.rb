class CreatePrerequisites < ActiveRecord::Migration
  def change
    create_table :prerequisites do |t|
      t.integer :course_id
      t.integer :prereq_id
      t.boolean :corequisite
      t.boolean :strict_corequisite
      t.string :description
      t.boolean :or_connector

      t.timestamps
    end
  end
end
