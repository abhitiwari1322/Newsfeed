json.extract! newsfeed, :id, :created_at, :updated_at
json.url newsfeed_url(newsfeed, format: :json)
