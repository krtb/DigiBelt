class User < ApplicationRecord
  has_many :projects
  has_many :user_techs

  validates_uniqueness_of :name

  has_secure_password
end
