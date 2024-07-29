require "test_helper"

class FlatsControllerTest < ActionDispatch::IntegrationTest
  test "should get rails" do
    get flats_rails_url
    assert_response :success
  end

  test "should get g" do
    get flats_g_url
    assert_response :success
  end

  test "should get model" do
    get flats_model_url
    assert_response :success
  end
end
