class CreateExpressions < ActiveRecord::Migration[5.2]
  def change
    create_table :expressions do |t|
      t.string :name
      t.string :language
      t.jsonb :meta

      t.timestamps
    end
  end
end
