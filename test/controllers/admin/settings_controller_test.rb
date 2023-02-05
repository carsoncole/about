require "test_helper"

class Admin::SettingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @setting = create(:setting)
    @admin = create(:admin)
  end

  test "should get index" do
    get edit_admin_setting_url(@setting, as: @admin)
    assert_response :success
  end

  test "should not get index" do
    get edit_admin_setting_url(@setting)
    assert_redirected_to :sign_in
  end

  # test "should get new" do
  #   get new_setting_url
  #   assert_response :success
  # end

  # test "should create setting" do
  #   assert_difference("Setting.count") do
  #     post settings_url, params: { setting: {  } }
  #   end

  #   assert_redirected_to setting_url(Setting.last)
  # end

  # test "should show setting" do
  #   get setting_url(@setting)
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get edit_setting_url(@setting)
  #   assert_response :success
  # end

  # test "should update setting" do
  #   patch setting_url(@setting), params: { setting: {  } }
  #   assert_redirected_to setting_url(@setting)
  # end

  # test "should destroy setting" do
  #   assert_difference("Setting.count", -1) do
  #     delete setting_url(@setting)
  #   end

  #   assert_redirected_to settings_url
  # end
end
