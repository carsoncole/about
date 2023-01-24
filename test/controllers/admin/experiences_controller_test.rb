require "test_helper"

class Admin::ExperiencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_experience = admin_experiences(:one)
  end

  test "should get index" do
    get admin_experiences_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_experience_url
    assert_response :success
  end

  test "should create admin_experience" do
    assert_difference("Admin::Experience.count") do
      post admin_experiences_url, params: { admin_experience: { description: @admin_experience.description, end_date: @admin_experience.end_date, name: @admin_experience.name, order: @admin_experience.order, start_date: @admin_experience.start_date, title: @admin_experience.title, url: @admin_experience.url } }
    end

    assert_redirected_to admin_experience_url(Admin::Experience.last)
  end

  test "should show admin_experience" do
    get admin_experience_url(@admin_experience)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_experience_url(@admin_experience)
    assert_response :success
  end

  test "should update admin_experience" do
    patch admin_experience_url(@admin_experience), params: { admin_experience: { description: @admin_experience.description, end_date: @admin_experience.end_date, name: @admin_experience.name, order: @admin_experience.order, start_date: @admin_experience.start_date, title: @admin_experience.title, url: @admin_experience.url } }
    assert_redirected_to admin_experience_url(@admin_experience)
  end

  test "should destroy admin_experience" do
    assert_difference("Admin::Experience.count", -1) do
      delete admin_experience_url(@admin_experience)
    end

    assert_redirected_to admin_experiences_url
  end
end
