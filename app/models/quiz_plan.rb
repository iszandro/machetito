class QuizPlan
  attr_reader :index, :resources

  def initialize(plan, category)
    @plan = plan
    @category = category
    @index = @plan[:current]
  end

  def corrects
    @_corrects ||= @plan[:corrects]
  end

  def finished?
    size == index
  end

  def mistakes
    @_mistakes ||= @plan[:mistakes]
  end

  def mistakes?
    mistakes.any?
  end

  def plan_array
    @plan[:plan]
  end

  def resource
    @_resource ||= resource_scope.find(resource_id)
  end

  def resources
    resource_scope
  end

  def scope
    @plan[:scope]
  end

  def size
    @plan[:size]
  end

  def strategy
    @_strategy = strategy_class&.new(resource)
  end

  def strategy_class_name
    current&.last
  end

  private

  def current
    plan_array[index]
  end

  def resource_id
    current&.first
  end

  def resource_scope
    @_resource_scope ||= case scope
                         when 'exercises' then
                           @category.exercises.includes(:exerciseable)
                         else
                           @category.words.includes(:wordable, translations: %i[wordable])
                         end
  end

  def strategy_class
    strategy_class_name&.safe_constantize
  end
end
