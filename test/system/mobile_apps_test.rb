require "application_system_test_case"

class MobileAppsTest < ApplicationSystemTestCase
  setup do
    @mobile_app = mobile_apps(:one)
  end

  test "visiting the index" do
    visit mobile_apps_url
    assert_selector "h1", text: "Mobile Apps"
  end

  test "creating a Mobile app" do
    visit mobile_apps_url
    click_on "New Mobile App"

    fill_in "Description", with: @mobile_app.description
    fill_in "Image url", with: @mobile_app.image_url
    fill_in "Name", with: @mobile_app.name
    fill_in "Store link", with: @mobile_app.store_link
    click_on "Create Mobile app"

    assert_text "Mobile app was successfully created"
    click_on "Back"
  end

  test "updating a Mobile app" do
    visit mobile_apps_url
    click_on "Edit", match: :first

    fill_in "Description", with: @mobile_app.description
    fill_in "Image url", with: @mobile_app.image_url
    fill_in "Name", with: @mobile_app.name
    fill_in "Store link", with: @mobile_app.store_link
    click_on "Update Mobile app"

    assert_text "Mobile app was successfully updated"
    click_on "Back"
  end

  test "destroying a Mobile app" do
    visit mobile_apps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mobile app was successfully destroyed"
  end
end
