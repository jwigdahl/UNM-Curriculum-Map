class CreateJoinTableDegreeRequirementTermPlan < ActiveRecord::Migration
  def change
    create_join_table :degree_requirements, :term_plans do |t|
      # t.index [:degree_requirement_id, :term_plan_id]
      # t.index [:term_plan_id, :degree_requirement_id]
    end
  end
end
