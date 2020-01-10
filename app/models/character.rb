class Character < ApplicationRecord
    belongs_to :kanji
    has_many :character_words
    has_many :words, through: :character_words
end
