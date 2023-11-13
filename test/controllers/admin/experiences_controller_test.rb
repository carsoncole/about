require "test_helper"

class Admin::ExperiencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin = create(:user)
  end

  test "should get index" do
    get admin_experiences_url(as: @admin)
    assert_response :success
  end

  test "should not get index" do
    get admin_experiences_url
    assert_redirected_to :sign_in
  end

  test "should get new" do
    get new_admin_experience_url(as: @admin)
    assert_response :success
  end

  test "should create experience" do
    assert_difference("Experience.count") do
      post admin_experiences_url(as: @admin), params: { experience: attributes_for(:experience) }
    end

    assert_redirected_to admin_experiences_url
  end

  test "should show admin_experience" do
    experience = create(:experience)
    get admin_experience_url(experience, as: @admin)
    assert_response :success
  end

  test "should get edit" do
    experience = create(:experience)
    get edit_admin_experience_url(experience, as: @admin)
    assert_response :success
  end

  test "should update admin_experience" do
    experience = create(:experience)
    patch admin_experience_url(experience, as: @admin), params: { experience: { description: 'new description' } }
    assert_redirected_to admin_experiences_url
    assert_equal 'new description', experience.reload.description
  end

  test "should destroy admin_experience" do
    experience = create(:experience)
    assert_difference("Experience.count", -1) do
      delete admin_experience_url(experience, as: @admin)
    end

    assert_redirected_to admin_experiences_url
  end
end
