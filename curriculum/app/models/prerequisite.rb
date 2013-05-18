class Prerequisite < ActiveRecord::Base
  belongs_to :course
  acts_as_list 
end
