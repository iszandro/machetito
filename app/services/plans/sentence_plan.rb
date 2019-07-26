# frozen_string_literal: true

module Plans
  module SentencePlan
    module_function

    def perform(exercise)
      [
        [exercise.id, exercise.exerciseable.multiline? && 'MultilineSentenceStrategy' || 'SentenceStrategy']
      ]
    end
  end
end
