class Course < ActiveRecord::Base
  belongs_to :dept
  belongs_to :degree_requirement
  has_many :prereqs, :through => :courses 
end
