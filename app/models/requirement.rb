class Requirement < ApplicationRecord
  belongs_to :rank
  has_many :sub_requirements
end
