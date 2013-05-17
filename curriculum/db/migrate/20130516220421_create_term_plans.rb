class CreateTermPlans < ActiveRecord::Migration
  def change
    create_table :term_plans do |t|
      t.integer :degree_plan_id
      t.integer :term_number

      t.timestamps
    end
  end
end
