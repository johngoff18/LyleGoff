json.extract! web_app, :id, :name, :description, :image_url, :link, :created_at, :updated_at
json.url web_app_url(web_app, format: :json)
