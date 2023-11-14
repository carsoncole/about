require "application_system_test_case"

class HomeTest < ApplicationSystemTestCase
  setup do
    create(:setting)
  end

  test "visiting the index" do
    visit root_url
    assert_selector "h1", text: "I'm Jack. I live in Tampa where I'm a Ruby on Rails full-stack developer."
  end

  test "visiting work with me" do
    visit work_with_me_url
    assert_selector "h1", text: "I am currently available."
  end

  test "visiting source" do
    visit source_url
    assert_selector "h1", text: "Tools I used in this application."
  end

  test "visiting solutions" do
    visit solutions_url
    assert_selector "h1", text: "Finding application solutions."
  end
end
