json.extract! mobile_app, :id, :name, :description, :image_url, :store_link, :created_at, :updated_at
json.url mobile_app_url(mobile_app, format: :json)
