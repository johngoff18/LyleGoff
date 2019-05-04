require "application_system_test_case"

class BlenderArtsTest < ApplicationSystemTestCase
  setup do
    @blender_art = blender_arts(:one)
  end

  test "visiting the index" do
    visit blender_arts_url
    assert_selector "h1", text: "Blender Arts"
  end

  test "creating a Blender art" do
    visit blender_arts_url
    click_on "New Blender Art"

    fill_in "Description", with: @blender_art.description
    fill_in "Image url", with: @blender_art.image_url
    fill_in "Link", with: @blender_art.link
    fill_in "Name", with: @blender_art.name
    click_on "Create Blender art"

    assert_text "Blender art was successfully created"
    click_on "Back"
  end

  test "updating a Blender art" do
    visit blender_arts_url
    click_on "Edit", match: :first

    fill_in "Description", with: @blender_art.description
    fill_in "Image url", with: @blender_art.image_url
    fill_in "Link", with: @blender_art.link
    fill_in "Name", with: @blender_art.name
    click_on "Update Blender art"

    assert_text "Blender art was successfully updated"
    click_on "Back"
  end

  test "destroying a Blender art" do
    visit blender_arts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blender art was successfully destroyed"
  end
end
