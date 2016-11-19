class Advancement < ApplicationRecord
  belongs_to :user
  has_many :ranks
end
