require "test_helper"

class ErrorsControllerTest < ActionDispatch::IntegrationTest
  test "should get not_authorized" do
    get errors_not_authorized_url
    assert_response :success
  end
end
