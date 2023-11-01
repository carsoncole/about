require "test_helper"

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    create(:setting)
    create_list(:experience, 3)
    create_list(:project, 4)
  end

  test "should get index" do
    get projects_url
    assert_response :success
  end
end
