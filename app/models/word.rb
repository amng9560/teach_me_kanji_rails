class Word < ApplicationRecord
    has_many :character_words
    has_many :characters, through: :character_words
    has_many :user_words
    has_many :users, through: :user_words

    def self.create_user_word(word, user_id)
        UserWord.create(
            word_id: word.id, 
            user_id: user_id
        )
    end

    def self.if_word_exists(user, user_id, word)
        if !user.words.exists?(word: word.word)
            create_user_word(word, user_id)
        end
    end

    def self.user_id_present(word, user_id)
        if user_id
            create_user_word(word, user_id)
        end
    end

    def self.word_character_check(word, user_id)
        if word.characters.length != 0
            word.save
            user_id_present(word, user_id)
        end
    end

    def self.character_association(character, word)
        if character
            word.characters << character
        end
    end

    def self.find_character(character, word)
        character = Character.find_by(symbol: character)
        character_association(character, word)
    end

    def self.character_iteration(word)
        characters = word.word.chars()
        characters.each do |character|
            find_character(character, word)
        end
    end

    def self.character_words(word, user_id)
        character_iteration(word)
        word_character_check(word, user_id)
    end

    def self.create_word(word, user_id)
        if Word.exists?(word: word.word)
            word = Word.find_by(word: word.word)
            if user_id
                @user = User.find(user_id)
                if_word_exists(@user, user_id, word)
            end
        else 
            character_words(word, user_id)
        end
        word
    end
end
