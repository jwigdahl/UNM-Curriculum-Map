class CreateJoinTableCourseDegreeRequirement < ActiveRecord::Migration
  def change
    create_join_table :courses, :degree_requirements do |t|
      # t.index [:course_id, :degree_requirement_id]
      # t.index [:degree_requirement_id, :course_id]
    end
  end
end
