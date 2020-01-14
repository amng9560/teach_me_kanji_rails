class User < ApplicationRecord
    has_secure_password
    has_many :user_words
    has_many :words, through: :user_words
end
