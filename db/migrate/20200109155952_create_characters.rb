class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :symbol
      t.string :onyomi_1
      t.string :onyomi_2
      t.string :kunyomi_1
      t.string :kunyomi_2
      t.string :meaning
      t.string :stroke_gif
      t.references :kanji, null: false, foreign_key: true

      t.timestamps
    end
  end
end
