require 'test_helper'

class BackOfficeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get back_office_index_url
    assert_response :success
  end

end
