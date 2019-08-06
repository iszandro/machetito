# frozen_string_literal: true

require 'application_system_test_case'

class SessionsTest < ApplicationSystemTestCase
  test 'user signs in' do
    visit root_path

    fill_in 'Email', with: 'bruce@wayne.com'
    fill_in 'Password', with: "I'm batman"

    click_on 'Log in'

    assert_content 'Categories'
    assert_current_path root_path
  end
end
