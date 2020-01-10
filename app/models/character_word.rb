class CharacterWord < ApplicationRecord
  belongs_to :word
  belongs_to :character
end
