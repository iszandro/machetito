class CreateWordTables < ActiveRecord::Migration[5.2]
  def change
    create_table :word_tables do |t|
      t.string :language, null: false
      t.jsonb :meta, default: {}
      t.string :words, array: true, default: []

      t.timestamps
    end
  end
end
