class TermPlan < ActiveRecord::Base
  belongs_to :degree_plan
  has_and_belongs_to_many :degree_requirements
end
