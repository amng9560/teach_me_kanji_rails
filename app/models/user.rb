class User < ApplicationRecord
    has_secure_password
    has_many :user_words
    has_many :words, through: :user_words

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 3 }
end
