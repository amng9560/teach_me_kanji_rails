class Question < ApplicationRecord
    has_one :quiz
    has_one :character, through: :quiz
    has_many :options
end
