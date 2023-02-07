require "test_helper"

class ResumeControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get 'resume.pdf'
    assert_response :success
  end
end
