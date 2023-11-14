require "application_system_test_case"

class Admin::ProjectsTest < ApplicationSystemTestCase
  setup do
    @project = create(:project)
    @user = create(:user)
  end

  test "visiting the index" do
    visit admin_projects_url(as: @user)
    assert_selector "h1", text: "Projects"
  end

  test "should create project" do
    visit admin_projects_url(as: @user)
    click_on "New Project"

    fill_in "Description", with: @project.description
    fill_in "Image url", with: @project.image_url
    fill_in "Name", with: @project.name
    fill_in "Order", with: @project.order
    fill_in "Source url", with: @project.source_url
    fill_in "Working url", with: @project.working_url
    click_on "Save"

    within('#flash') do
      assert_text "Project was successfully created"
    end
  end

  test "should update Project" do
    visit admin_project_url(@project, as: @user)
    click_on "Edit", match: :first

    fill_in "Description", with: @project.description
    fill_in "Image url", with: @project.image_url
    fill_in "Name", with: @project.name
    fill_in "Order", with: @project.order
    fill_in "Source url", with: @project.source_url
    fill_in "Working url", with: @project.working_url
    click_on "Save"

    within('#flash') do
      assert_text "Project was successfully updated"
    end
  end

  test "should destroy Project" do
    visit admin_project_url(@project, as: @user)
    click_on "Destroy", match: :first

    within('#flash') do
      assert_text "Project was successfully destroyed"
    end
  end
end
