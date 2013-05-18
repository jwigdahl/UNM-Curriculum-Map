class DegreeRequirement < ActiveRecord::Base
  belongs_to :degree_plan
  has_and_belongs_to_many :courses
  has_and_belongs_to_many :term_plans
end
