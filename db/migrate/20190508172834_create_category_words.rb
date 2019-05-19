class CreateCategoryWords < ActiveRecord::Migration[5.2]
  def change
    create_table :category_words do |t|
      t.belongs_to :category, foreign_key: true
      t.belongs_to :word, foreign_key: true

      t.timestamps

      t.index %i[category_id word_id], unique: true
    end
  end
end
