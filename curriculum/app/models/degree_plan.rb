class DegreePlan < ActiveRecord::Base
  has_many :degree_plan_notes
  belongs_to :undergrad_program
end
