class Rank < ApplicationRecord
  belongs_to :advancement
  has_many :requirements
end
