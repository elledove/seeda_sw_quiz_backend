class Question < ApplicationRecord
    belongs_to :theme
    has_many :answers
end
