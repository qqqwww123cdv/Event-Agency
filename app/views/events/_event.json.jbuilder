json.extract! event, :id, :picture, :title, :description, :created_at, :updated_at
json.url event_url(event, format: :json)
json.picture url_for(event.picture)
