class Tech < ApplicationRecord
  has_many :tech_stack_items
  has_many :user_techs
end
