class Word < ApplicationRecord
    has_many :character_words
    has_many :characters, through: :character_words
    has_many :user_words
    has_many :users, through: :user_words
    validates :word, uniqueness: true
end
