class Project < ApplicationRecord
  belongs_to :user
  belongs_to :database
  belongs_to :language
end
