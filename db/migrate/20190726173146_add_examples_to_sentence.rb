class AddExamplesToSentence < ActiveRecord::Migration[5.2]
  def change
    add_column :sentences, :examples, :jsonb, default: []
  end
end
