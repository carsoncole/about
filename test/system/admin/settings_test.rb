require "application_system_test_case"

class Admin::SettingsTest < ApplicationSystemTestCase
  setup do
    @setting = create(:setting)
    @user = create(:user)
  end

  test "should update Setting" do
    visit edit_admin_setting_url(@setting, as: @user)

    click_on "Save"

    assert_text "Setting was successfully updated"
  end
end
