class CreateWordTranslations < ActiveRecord::Migration[5.2]
  def change
    create_table :word_translations do |t|
      t.belongs_to :word, foreign_key: true
      t.belongs_to :translation_word, foreign_key: { to_table: :words }

      t.timestamps

      t.index %i[word_id translation_word_id], unique: true
    end
  end
end
