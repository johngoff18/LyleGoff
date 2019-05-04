require 'test_helper'

class MobileAppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mobile_app = mobile_apps(:one)
  end

  test "should get index" do
    get mobile_apps_url
    assert_response :success
  end

  test "should get new" do
    get new_mobile_app_url
    assert_response :success
  end

  test "should create mobile_app" do
    assert_difference('MobileApp.count') do
      post mobile_apps_url, params: { mobile_app: { description: @mobile_app.description, image_url: @mobile_app.image_url, name: @mobile_app.name, store_link: @mobile_app.store_link } }
    end

    assert_redirected_to mobile_app_url(MobileApp.last)
  end

  test "should show mobile_app" do
    get mobile_app_url(@mobile_app)
    assert_response :success
  end

  test "should get edit" do
    get edit_mobile_app_url(@mobile_app)
    assert_response :success
  end

  test "should update mobile_app" do
    patch mobile_app_url(@mobile_app), params: { mobile_app: { description: @mobile_app.description, image_url: @mobile_app.image_url, name: @mobile_app.name, store_link: @mobile_app.store_link } }
    assert_redirected_to mobile_app_url(@mobile_app)
  end

  test "should destroy mobile_app" do
    assert_difference('MobileApp.count', -1) do
      delete mobile_app_url(@mobile_app)
    end

    assert_redirected_to mobile_apps_url
  end
end
