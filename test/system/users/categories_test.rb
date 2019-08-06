# frozen_string_literal: true

require 'application_system_test_case'

module Users
  class CategoriesTest < ApplicationSystemTestCase
    def setup
      @user = users(:bruce_wayne)
      sign_in @user
    end

    test 'user sees categories with no parents' do
      visit root_path

      assert_content 'Categories'
      assert_content 'Vocabulary'
      assert_content 'Lessons'
      assert_content 'Kanjis'
      refute_content 'Verbs'
      refute_content 'Adjectives'
      refute_content 'NA Adjectives'
      refute_content 'Lesson 1'
    end

    test 'not signed user cannot see categories page' do
      sign_out @user

      visit categories_path
      assert_content 'Log in'
    end

    test 'user sees subcategories page' do
      kanjis = categories(:kanjis)

      visit category_path(kanjis)

      assert_content '一'
      assert_content '二'
      assert_match /Start Quiz/, page.body
    end
  end
end
