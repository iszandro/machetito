class SentenceStrategy
  def initialize(exercise)
    @exercise = exercise
  end

  def valid?(value)
    @exercise.exerciseable.answers.include?(value.gsub(/\s/, ''))
  end
end
