class User < ApplicationRecord
  has_many :projects
  has_many :user_techs
end
