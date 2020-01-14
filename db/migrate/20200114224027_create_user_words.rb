class CreateUserWords < ActiveRecord::Migration[6.0]
  def change
    create_table :user_words do |t|
      t.user :references
      t.word :references

      t.timestamps
    end
  end
end
