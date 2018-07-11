class Language < ApplicationRecord
    has_many :projects
    has_many :frameworks
end
