class CreateCategoryExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :category_exercises do |t|
      t.belongs_to :category, foreign_key: true
      t.belongs_to :exercise, foreign_key: true

      t.timestamps

      t.index %i[category_id exercise_id], unique: true
    end
  end
end
