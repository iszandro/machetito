# frozen_string_literal: true

require 'application_system_test_case'

module Users
  class WordsTest < ApplicationSystemTestCase
    def setup
      @user = users(:bruce_wayne)
      sign_in @user
    end

    test 'user sess word page' do
      one_kanji_word = words(:one_kanji)

      visit word_path(one_kanji_word)
      assert_current_path word_path(one_kanji_word)
      assert_content '一'
      assert_content 'Kanji'
    end
  end
end
