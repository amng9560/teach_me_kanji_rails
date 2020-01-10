class CreateCharacterWords < ActiveRecord::Migration[6.0]
  def change
    create_table :character_words do |t|
      t.references :word, null: false, foreign_key: true
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
