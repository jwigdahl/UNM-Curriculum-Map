class RemoveDegreeRequirementIdFromCourse < ActiveRecord::Migration
  def change
    remove_column :courses, :degree_requirement_id, :integer
  end
end
