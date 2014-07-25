class OpenSource < ActiveRecord::Base
  belongs_to :cv
  has_many :open_source_projects
end
