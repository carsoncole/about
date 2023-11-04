require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase
  setup do
    @project = create(:project)
  end

  test "visiting the index" do
    visit projects_url
    assert_selector "h1", text: "Projects"
  end
end
