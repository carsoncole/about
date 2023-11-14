require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase
  setup do
    create(:setting)
    @project = create(:project)
  end

  test "visiting the index" do
    visit projects_url
    assert_selector "h1", text: "Open-source projects I've built."
  end
end
