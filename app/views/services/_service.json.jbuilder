json.extract! service, :id, :title, :picture, :content, :created_at, :updated_at
json.url service_url(service, format: :json)
json.picture url_for(service.picture)
