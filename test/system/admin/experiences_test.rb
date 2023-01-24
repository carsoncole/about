require "application_system_test_case"

class Admin::ExperiencesTest < ApplicationSystemTestCase
  setup do
    @admin_experience = admin_experiences(:one)
  end

  test "visiting the index" do
    visit admin_experiences_url
    assert_selector "h1", text: "Experiences"
  end

  test "should create experience" do
    visit admin_experiences_url
    click_on "New experience"

    fill_in "Description", with: @admin_experience.description
    fill_in "End date", with: @admin_experience.end_date
    fill_in "Name", with: @admin_experience.name
    fill_in "Order", with: @admin_experience.order
    fill_in "Start date", with: @admin_experience.start_date
    fill_in "Title", with: @admin_experience.title
    fill_in "Url", with: @admin_experience.url
    click_on "Create Experience"

    assert_text "Experience was successfully created"
    click_on "Back"
  end

  test "should update Experience" do
    visit admin_experience_url(@admin_experience)
    click_on "Edit this experience", match: :first

    fill_in "Description", with: @admin_experience.description
    fill_in "End date", with: @admin_experience.end_date
    fill_in "Name", with: @admin_experience.name
    fill_in "Order", with: @admin_experience.order
    fill_in "Start date", with: @admin_experience.start_date
    fill_in "Title", with: @admin_experience.title
    fill_in "Url", with: @admin_experience.url
    click_on "Update Experience"

    assert_text "Experience was successfully updated"
    click_on "Back"
  end

  test "should destroy Experience" do
    visit admin_experience_url(@admin_experience)
    click_on "Destroy this experience", match: :first

    assert_text "Experience was successfully destroyed"
  end
end
