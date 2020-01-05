# frozen_string_literal: true

class CreateCounters < ActiveRecord::Migration[6.0]
  def change
    create_table :counters do |t|
      t.string :name
      t.string :language, null: false
      t.jsonb :meta, default: {}

      t.timestamps
    end
  end
end
