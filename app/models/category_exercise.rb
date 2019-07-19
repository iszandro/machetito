class CategoryExercise < ApplicationRecord
  belongs_to :category
  belongs_to :exercise
end
