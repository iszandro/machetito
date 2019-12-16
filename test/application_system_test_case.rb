# frozen_string_literal: true

require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  include Devise::Test::IntegrationHelpers

  driven_by :rack_test
  #driven_by :selenium, using: :headless_chrome
end
