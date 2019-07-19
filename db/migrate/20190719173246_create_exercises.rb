class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.belongs_to :exerciseable, polymorphic: true

      t.timestamps
    end
  end
end
