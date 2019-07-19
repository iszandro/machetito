class CreateBracketWords < ActiveRecord::Migration[5.2]
  def change
    create_table :bracket_words do |t|
      t.string :language, null: false
      t.jsonb :meta, default: {}
      t.string :sentences, array: true, default: []

      t.timestamps
    end
  end
end
