# frozen_string_literal: true

class CreateAdjectives < ActiveRecord::Migration[6.0]
  def change
    create_table :adjectives do |t|
      t.string :name
      t.string :language
      t.jsonb :meta, default: {}

      t.timestamps
    end
  end
end
