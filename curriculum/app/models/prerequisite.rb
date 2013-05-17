class Prerequisite < ActiveRecord::Base
  has_one :course
end
