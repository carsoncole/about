require "test_helper"

class ExperiencessControllerTest < ActionDispatch::IntegrationTest
  setup do
    create(:setting)
    create_list(:experience, 3)
    create_list(:project, 4)
  end

  test "should get index" do
    get experiences_url
    assert_response :success
  end
end
