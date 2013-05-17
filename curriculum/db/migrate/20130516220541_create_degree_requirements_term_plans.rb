class CreateDegreeRequirementsTermPlans < ActiveRecord::Migration
  def change
    create_table :degree_requirements_term_plans do |t|
      t.integer :degree_requirement_id
      t.integer :term_plan_id

      t.timestamps
    end
  end
end
