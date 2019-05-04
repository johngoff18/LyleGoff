class WelcomeController < ApplicationController
  def index
    @blender_arts = BlenderArt.all
    @mobile_apps = MobileApp.all
    @web_apps = WebApp.all
  end
end
