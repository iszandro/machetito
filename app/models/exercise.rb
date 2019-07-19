class Exercise < ApplicationRecord
  belongs_to :exerciseable, polymorphic: true
end
