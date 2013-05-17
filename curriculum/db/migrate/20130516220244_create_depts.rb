class CreateDepts < ActiveRecord::Migration
  def change
    create_table :depts do |t|
      t.integer :college_id
      t.string :name
      t.string :acronym
      t.string :org_code

      t.timestamps
    end
  end
end
