class CreateKanjis < ActiveRecord::Migration[6.0]
  def change
    create_table :kanjis do |t|
      t.text :onyomi
      t.text :kunyomi
      t.text :history

      t.timestamps
    end
  end
end
