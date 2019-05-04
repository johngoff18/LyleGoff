require "application_system_test_case"

class WebAppsTest < ApplicationSystemTestCase
  setup do
    @web_app = web_apps(:one)
  end

  test "visiting the index" do
    visit web_apps_url
    assert_selector "h1", text: "Web Apps"
  end

  test "creating a Web app" do
    visit web_apps_url
    click_on "New Web App"

    fill_in "Description", with: @web_app.description
    fill_in "Image url", with: @web_app.image_url
    fill_in "Link", with: @web_app.link
    fill_in "Name", with: @web_app.name
    click_on "Create Web app"

    assert_text "Web app was successfully created"
    click_on "Back"
  end

  test "updating a Web app" do
    visit web_apps_url
    click_on "Edit", match: :first

    fill_in "Description", with: @web_app.description
    fill_in "Image url", with: @web_app.image_url
    fill_in "Link", with: @web_app.link
    fill_in "Name", with: @web_app.name
    click_on "Update Web app"

    assert_text "Web app was successfully updated"
    click_on "Back"
  end

  test "destroying a Web app" do
    visit web_apps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Web app was successfully destroyed"
  end
end
