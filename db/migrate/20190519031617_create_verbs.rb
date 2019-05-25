class CreateVerbs < ActiveRecord::Migration[5.2]
  def change
    create_table :verbs do |t|
      t.string :name
      t.string :language
      t.jsonb :meta, default: {}

      t.timestamps
    end
  end
end
