require "application_system_test_case"

class EducationsTest < ApplicationSystemTestCase
  setup do
    create(:setting)
    @user = create(:user)
    @education = create(:education)
  end

  test "visiting the index" do
    visit admin_educations_url(as: @user)
    assert_selector "h1", text: "Education"
  end

  test "should create education" do
    visit admin_educations_url(as: @user)
    click_on "New Education"

    fill_in "End date", with: @education.end_date
    fill_in "Name", with: @education.name
    fill_in "Start date", with: @education.start_date
    fill_in "Title", with: @education.title
    click_on "Save"

    within '#flash' do
      assert_text "Education was successfully created"
    end
  end

  test "should update Education" do
    visit admin_educations_url(@admin, as: @user)
    click_on "Edit", match: :first

    fill_in "End date", with: @education.end_date
    fill_in "Name", with: @education.name
    fill_in "Start date", with: @education.start_date
    fill_in "Title", with: @education.title
    click_on "Save"

    assert_text "Education was successfully updated"
  end

  test "should destroy Education" do
    visit admin_educations_url(as: @user)
    click_on "Destroy", match: :first

    within '#flash' do
      assert_text "Education was successfully destroyed"
    end
  end
end
