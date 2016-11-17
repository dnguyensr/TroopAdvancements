class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :advancements
  has_many :ranks, through :advancements
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
