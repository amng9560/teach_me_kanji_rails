class Quiz < ApplicationRecord
  belongs_to :question
  belongs_to :character
end
