require "test_helper"

class Admin::ProjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_projects_url, headers: { Authorization: ActionController::HttpAuthentication::Basic.encode_credentials('name', 'password')}
    assert_response :success
  end

  test "should not get index" do
    get admin_projects_url
    assert_response :unauthorized
  end

  # test "should get new" do
  #   get new_project_url
  #   assert_response :success
  # end

  # test "should create project" do
  #   assert_difference("Project.count") do
  #     post projects_url, params: { project: { description: @project.description, image_url: @project.image_url, name: @project.name, order: @project.order, source_url: @project.source_url, working_url: @project.working_url } }
  #   end

  #   assert_redirected_to project_url(Project.last)
  # end

  # test "should show project" do
  #   get project_url(@project)
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get edit_project_url(@project)
  #   assert_response :success
  # end

  # test "should update project" do
  #   patch project_url(@project), params: { project: { description: @project.description, image_url: @project.image_url, name: @project.name, order: @project.order, source_url: @project.source_url, working_url: @project.working_url } }
  #   assert_redirected_to project_url(@project)
  # end

  # test "should destroy project" do
  #   assert_difference("Project.count", -1) do
  #     delete project_url(@project)
  #   end

  #   assert_redirected_to projects_url
  # end
end