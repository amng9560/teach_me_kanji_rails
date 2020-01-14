class Word < ApplicationRecord
    has_many :character_words
    has_many :characters, through: :character_words
    validates :word, uniqueness: true
end
