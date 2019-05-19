class CreateKanjis < ActiveRecord::Migration[5.2]
  def change
    create_table :kanjis do |t|
      t.string :name
      t.string :language, default: 'jp'
      t.string :readings, array: true, default: []
      t.jsonb :meta, default: {}

      t.timestamps
    end
  end
end
