require "test_helper"

class CatagorysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get catagorys_index_url
    assert_response :success
  end
end
