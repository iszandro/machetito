# frozen_string_literal: true

class CategoryPresenter
  delegate :display_name, :to_model, :to_param, :subcategories, :words, to: :@category

  def initialize(category)
    @category = category
  end

  def parents
    parents = []
    category = @category

    loop do
      break if category.parent_id.nil?

      parents << category.parent
      category = category.parent
    end

    parents.reverse
  end

  def subcategories?
    subcategories.any?
  end

  def words?
    words.any?
  end

  private

  def parent(category = @category)
    return nil if category.parent_id.nil?

    category.parent
  end
end
