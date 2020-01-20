class Question < ApplicationRecord
    has_many :quizzes
    has_many :characters, through: :quizzes
end
