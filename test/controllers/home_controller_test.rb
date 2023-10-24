require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    create(:setting)
    get root_url
    assert_response :success
  end

  # test "should not get index" do
  #   get root_url
  #   follow_redirect!
  #   assert_redirected_to :sign_in
  # end
end
