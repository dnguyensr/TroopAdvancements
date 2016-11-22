class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :advancement
  has_many :ranks, through: :advancement
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
