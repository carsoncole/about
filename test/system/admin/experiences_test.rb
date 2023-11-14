require "application_system_test_case"

class Admin::ExperiencesTest < ApplicationSystemTestCase
  setup do
    @user = create(:user)
    create(:setting)
    @experience = create(:experience)
  end

  test "visiting the index" do
    visit admin_experiences_url(as: @user)
    assert_selector "h1", text: "Experiences"
  end

  test "should create experience" do
    visit admin_experiences_url(as: @user)
    click_on "New Experience"

    fill_in "Description", with: @experience.description
    fill_in "End date", with: @experience.end_date
    fill_in "Name", with: @experience.name
    fill_in "Order", with: @experience.order
    fill_in "Start date", with: @experience.start_date
    fill_in "Title", with: @experience.title
    fill_in "Url", with: @experience.url
    click_on "Save"

    within '#flash' do
      assert_text "Experience was successfully created"
    end

  end

  test "should update Experience" do
    visit admin_experience_url(@experience, as: @user)
    click_on "Edit", match: :first

    fill_in "Description", with: @experience.description
    fill_in "End date", with: @experience.end_date
    fill_in "Name", with: @experience.name
    fill_in "Order", with: @experience.order
    fill_in "Start date", with: @experience.start_date
    fill_in "Title", with: @experience.title
    fill_in "Url", with: @experience.url
    click_on "Save"

    within '#flash' do
      assert_text "Experience was successfully updated"
    end
  end

  test "should destroy Experience" do
    visit admin_experience_url(@experience, as: @user)
    click_on "Destroy", match: :first

    within '#flash' do
      assert_text "Experience was successfully destroyed"
    end
  end
end
