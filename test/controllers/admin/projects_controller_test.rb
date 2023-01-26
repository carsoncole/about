require "test_helper"

class Admin::ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = create(:project)
  end

  test "should get index" do
    get admin_projects_url, headers: { Authorization: ActionController::HttpAuthentication::Basic.encode_credentials('name', 'password')}
    assert_response :success
  end

  test "should not get index" do
    get admin_projects_url
    assert_response :unauthorized
  end

  test "should get new" do
    get new_admin_project_url, headers: { Authorization: ActionController::HttpAuthentication::Basic.encode_credentials('name', 'password')}
    assert_response :success
  end

  test "should not get new" do
    get new_admin_project_url
    assert_response :unauthorized
  end

  test "should create project" do
    assert_difference("Project.count") do
      post admin_projects_url, params: { project: { description: @project.description, image_url: @project.image_url, name: @project.name, order: @project.order, source_url: @project.source_url, working_url: @project.working_url } }, headers: { Authorization: ActionController::HttpAuthentication::Basic.encode_credentials('name', 'password')}
    end

    assert_redirected_to admin_projects_url
  end

  test "should show project" do
    get admin_project_url(@project), headers: { Authorization: ActionController::HttpAuthentication::Basic.encode_credentials('name', 'password')}
    assert_response :success
  end

  test "should not show project" do
    get admin_project_url(@project)
    assert_response :unauthorized
  end

  test "should get edit" do
    get edit_admin_project_url(@project), headers: { Authorization: ActionController::HttpAuthentication::Basic.encode_credentials('name', 'password')}
    assert_response :success
  end

  test "should update project" do
    patch admin_project_url(@project), params: { project: { description: @project.description, image_url: @project.image_url, name: @project.name, order: @project.order, source_url: @project.source_url, working_url: @project.working_url } }, headers: { Authorization: ActionController::HttpAuthentication::Basic.encode_credentials('name', 'password')}
    assert_redirected_to admin_projects_url
  end

  test "should not update project" do
    patch admin_project_url(@project), params: { project: { description: @project.description, image_url: @project.image_url, name: @project.name, order: @project.order, source_url: @project.source_url, working_url: @project.working_url } }
    assert_response :unauthorized
  end

  test "should destroy project" do
    assert_difference("Project.count", -1) do
      delete admin_project_url(@project), headers: { Authorization: ActionController::HttpAuthentication::Basic.encode_credentials('name', 'password')}
    end

    assert_redirected_to admin_projects_url
  end

  test "should not destroy project" do
    assert_difference("Project.count", 0) do
      delete admin_project_url(@project)
    end

    assert_response :unauthorized
  end
end
