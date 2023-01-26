require "test_helper"

class Admin::ExperiencesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_experiences_url, headers: { Authorization: ActionController::HttpAuthentication::Basic.encode_credentials('name', 'password')}
    assert_response :success
  end

  test "should not get index" do
    get admin_experiences_url
    assert_response :unauthorized
  end

  test "should get new" do
    get new_admin_experience_url, headers: { Authorization: ActionController::HttpAuthentication::Basic.encode_credentials('name', 'password')}
    assert_response :success
  end

  test "should create experience" do
    assert_difference("Experience.count") do
      post admin_experiences_url, params: { experience: attributes_for(:experience) }, headers: { Authorization: ActionController::HttpAuthentication::Basic.encode_credentials('name', 'password')}
    end

    assert_redirected_to admin_experience_url(Experience.last)
  end

  test "should show admin_experience" do
    experience = create(:experience)
    get admin_experience_url(experience), headers: { Authorization: ActionController::HttpAuthentication::Basic.encode_credentials('name', 'password')}
    assert_response :success
  end

  test "should get edit" do
    experience = create(:experience)
    get edit_admin_experience_url(experience), headers: { Authorization: ActionController::HttpAuthentication::Basic.encode_credentials('name', 'password')}
    assert_response :success
  end

  test "should update admin_experience" do
    experience = create(:experience)
    patch admin_experience_url(experience), params: { experience: { description: 'new description' } }, headers: { Authorization: ActionController::HttpAuthentication::Basic.encode_credentials('name', 'password')}
    assert_redirected_to admin_experience_url(experience)
    assert_equal 'new description', experience.reload.description
  end

  test "should destroy admin_experience" do
    experience = create(:experience)
    assert_difference("Experience.count", -1) do
      delete admin_experience_url(experience), headers: { Authorization: ActionController::HttpAuthentication::Basic.encode_credentials('name', 'password')}
    end

    assert_redirected_to admin_experiences_url
  end
end
