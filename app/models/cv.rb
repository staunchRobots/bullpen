class Cv < ActiveRecord::Base
  has_many :experiences
  has_many :educations
  has_many :languages
  has_many :open_sources
  has_many :practices
  has_many :projects
  has_many :skills
end
