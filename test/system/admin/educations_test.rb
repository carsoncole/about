require "application_system_test_case"

class EducationsTest < ApplicationSystemTestCase
  setup do
    @admin_education = admin_educations(:one)
  end

  test "visiting the index" do
    visit admin_educations_url
    assert_selector "h1", text: "Educations"
  end

  test "should create education" do
    visit admin_educations_url
    click_on "New education"

    fill_in "End date", with: @admin_education.end_date
    fill_in "Name", with: @admin_education.name
    fill_in "Start date", with: @admin_education.start_date
    fill_in "Title", with: @admin_education.title
    click_on "Create Education"

    assert_text "Education was successfully created"
    click_on "Back"
  end

  test "should update Education" do
    visit admin_education_url(@admin_education)
    click_on "Edit this education", match: :first

    fill_in "End date", with: @admin_education.end_date
    fill_in "Name", with: @admin_education.name
    fill_in "Start date", with: @admin_education.start_date
    fill_in "Title", with: @admin_education.title
    click_on "Update Education"

    assert_text "Education was successfully updated"
    click_on "Back"
  end

  test "should destroy Education" do
    visit admin_education_url(@admin_education)
    click_on "Destroy this education", match: :first

    assert_text "Education was successfully destroyed"
  end
end
