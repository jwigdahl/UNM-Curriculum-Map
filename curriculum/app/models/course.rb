class Course < ActiveRecord::Base
  belongs_to :dept
  has_and_belongs_to_many :degree_requirements
  has_many :prerequisites
end
