class CreateSuffixes < ActiveRecord::Migration[5.2]
  def change
    create_table :suffixes do |t|
      t.string :name
      t.string :language, null: false
      t.jsonb :meta, default: {}

      t.timestamps
    end
  end
end
