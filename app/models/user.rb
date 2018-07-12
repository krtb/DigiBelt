class User < ApplicationRecord
  has_many :projects

  validates_uniqueness_of :name

  has_secure_password
end
