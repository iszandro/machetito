# frozen_string_literal: true

require 'test_helper'

module Users
  class CategoryPresenterTest < ActiveSupport::TestCase
    test 'root category does not have parents and has subcategories' do
      root_category = categories(:vocabulary)

      subject = Users::CategoryPresenter.new(root_category)
      assert_empty subject.parents
      assert subject.subcategories?
      assert_equal root_category.subcategories, subject.subcategories
    end

    test 'subcategory has parents' do
      subcategory = categories(:verbs)

      subject = Users::CategoryPresenter.new(subcategory)
      assert_equal [subcategory.parent], subject.parents
    end

    test 'category has words' do
      subcategory = categories(:kanjis)

      subject = Users::CategoryPresenter.new(subcategory)
      assert subject.words?
      assert_equal subcategory.words, subject.words
    end
  end
end
