class CreateDegreePlans < ActiveRecord::Migration
  def change
    create_table :degree_plans do |t|
      t.integer :undergrad_program_id
      t.string :academic_year

      t.timestamps
    end
  end
end
