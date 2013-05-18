class Dept < ActiveRecord::Base
  belongs_to :college
  has_many :undergrad_programs
  has_many :courses
end
