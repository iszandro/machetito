class CreateSentences < ActiveRecord::Migration[5.2]
  def change
    create_table :sentences do |t|
      t.string :answers, array: true, default: []
      t.string :clues, array: true, default: []
      t.jsonb :example, default: {}
      t.string :language, null: false
      t.jsonb :meta, default: {}
      t.boolean :multiline, default: false

      t.timestamps
    end
  end
end
