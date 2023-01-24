require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase
  setup do
    @project = projects(:one)
  end

  test "visiting the index" do
    visit projects_url
    assert_selector "h1", text: "Projects"
  end

  test "should create project" do
    visit projects_url
    click_on "New project"

    fill_in "Description", with: @project.description
    fill_in "Image url", with: @project.image_url
    fill_in "Name", with: @project.name
    fill_in "Order", with: @project.order
    fill_in "Source url", with: @project.source_url
    fill_in "Working url", with: @project.working_url
    click_on "Create Project"

    assert_text "Project was successfully created"
    click_on "Back"
  end

  test "should update Project" do
    visit project_url(@project)
    click_on "Edit this project", match: :first

    fill_in "Description", with: @project.description
    fill_in "Image url", with: @project.image_url
    fill_in "Name", with: @project.name
    fill_in "Order", with: @project.order
    fill_in "Source url", with: @project.source_url
    fill_in "Working url", with: @project.working_url
    click_on "Update Project"

    assert_text "Project was successfully updated"
    click_on "Back"
  end

  test "should destroy Project" do
    visit project_url(@project)
    click_on "Destroy this project", match: :first

    assert_text "Project was successfully destroyed"
  end
end
