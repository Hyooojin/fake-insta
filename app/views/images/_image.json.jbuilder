json.extract! image, :id, :image_url, :story, :created_at, :updated_at
json.url image_url(image, format: :json)
