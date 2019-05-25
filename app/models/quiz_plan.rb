class QuizPlan
  attr_reader :index

  def initialize(plan, words)
    @plan = plan
    @words = words
    @index = @plan[:current]
  end

  def corrects
    @_corrects ||= @plan[:corrects]
  end

  def mistakes
    @_mistakes ||= @plan[:mistakes]
  end

  def plan_array
    @plan[:plan]
  end

  def size
    @plan[:size]
  end

  def strategy
    @_strategy = strategy_class&.new(word)
  end

  def strategy_class_name
    current&.last
  end

  def word
    @_word ||= @words.find(word_id)
  end

  private

  def current
    plan_array[index]
  end

  def strategy_class
    strategy_class_name&.safe_constantize
  end

  def word_id
    current&.first
  end
end
