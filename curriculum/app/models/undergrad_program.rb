class UndergradProgram < ActiveRecord::Base
  belongs_to :dept
  has_many :degree_plans
end
