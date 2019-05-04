require 'test_helper'

class BlenderArtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blender_art = blender_arts(:one)
  end

  test "should get index" do
    get blender_arts_url
    assert_response :success
  end

  test "should get new" do
    get new_blender_art_url
    assert_response :success
  end

  test "should create blender_art" do
    assert_difference('BlenderArt.count') do
      post blender_arts_url, params: { blender_art: { description: @blender_art.description, image_url: @blender_art.image_url, link: @blender_art.link, name: @blender_art.name } }
    end

    assert_redirected_to blender_art_url(BlenderArt.last)
  end

  test "should show blender_art" do
    get blender_art_url(@blender_art)
    assert_response :success
  end

  test "should get edit" do
    get edit_blender_art_url(@blender_art)
    assert_response :success
  end

  test "should update blender_art" do
    patch blender_art_url(@blender_art), params: { blender_art: { description: @blender_art.description, image_url: @blender_art.image_url, link: @blender_art.link, name: @blender_art.name } }
    assert_redirected_to blender_art_url(@blender_art)
  end

  test "should destroy blender_art" do
    assert_difference('BlenderArt.count', -1) do
      delete blender_art_url(@blender_art)
    end

    assert_redirected_to blender_arts_url
  end
end
