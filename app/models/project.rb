class Project < ApplicationRecord
  belongs_to :user
  has_one :tech_stack
end
