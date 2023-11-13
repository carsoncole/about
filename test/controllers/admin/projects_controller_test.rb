require "test_helper"

class Admin::ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = create(:project)
    @admin = create(:user)
  end

  test "should get index" do
    get admin_projects_url(as: @admin)
    assert_response :success
  end

  test "should not get index" do
    get admin_projects_url
    assert_redirected_to :sign_in
  end

  test "should get new" do
    get new_admin_project_url(as: @admin)
    assert_response :success
  end

  test "should not get new" do
    get new_admin_project_url
    assert_redirected_to :sign_in
  end

  test "should create project" do
    assert_difference("Project.count") do
      post admin_projects_url(as: @admin), params: { project: { description: @project.description, image_url: @project.image_url, name: @project.name, order: @project.order, source_url: @project.source_url, working_url: @project.working_url } }
    end

    assert_redirected_to admin_projects_url
  end

  test "should show project" do
    get admin_project_url(@project, as: @admin)
    assert_response :success
  end

  test "should not show project" do
    get admin_project_url(@project)
    assert_redirected_to :sign_in
  end

  test "should get edit" do
    get edit_admin_project_url(@project, as: @admin)
    assert_response :success
  end

  test "should update project" do
    patch admin_project_url(@project, as: @admin), params: { project: { description: @project.description, image_url: @project.image_url, name: @project.name, order: @project.order, source_url: @project.source_url, working_url: @project.working_url } }
    assert_redirected_to admin_projects_url
  end

  test "should not update project" do
    patch admin_project_url(@project), params: { project: { description: @project.description, image_url: @project.image_url, name: @project.name, order: @project.order, source_url: @project.source_url, working_url: @project.working_url } }
    assert_redirected_to :sign_in
  end

  test "should destroy project" do
    assert_difference("Project.count", -1) do
      delete admin_project_url(@project, as: @admin)
    end

    assert_redirected_to admin_projects_url
  end

  test "should not destroy project" do
    assert_difference("Project.count", 0) do
      delete admin_project_url(@project)
    end

    assert_redirected_to :sign_in
  end
end
