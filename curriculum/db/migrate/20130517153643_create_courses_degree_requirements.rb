class CreateCoursesDegreeRequirements < ActiveRecord::Migration
  def change
    create_table :courses_degree_requirements do |t|
      t.integer :course_id
      t.integer :degree_requirement_id

      t.timestamps
    end
  end
end
