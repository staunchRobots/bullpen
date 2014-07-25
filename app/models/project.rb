class Project < ActiveRecord::Base
  belongs_to :cv
  has_many :project_interest_points
end
