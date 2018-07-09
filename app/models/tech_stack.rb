class TechStack < ApplicationRecord
  belongs_to :project
  has_many :tech_stack_items
end
