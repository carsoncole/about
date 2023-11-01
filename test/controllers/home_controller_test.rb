require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  setup do
    create(:setting)
    create_list(:experience, 3)
    create_list(:project, 4)
  end


  test "should get index" do
    get root_url
    assert_response :success
  end

  test "should get work with me" do
    get work_with_me_url
    assert_response :success
  end

  test "should get source" do
    get source_url
    assert_response :success
  end

  test "should get sitemap" do
    get "/sitemap.xml"
    assert_response :success
  end

end
