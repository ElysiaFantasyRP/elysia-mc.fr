# frozen_string_literal: true

require 'test_helper'

class AdminMenuControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get admin_menu_index_url
    assert_response :success
  end
end
