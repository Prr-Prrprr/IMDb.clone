json.extract! movie, :id, :name, :text, :category, :created_at, :updated_at
json.url movie_url(movie, format: :json)
