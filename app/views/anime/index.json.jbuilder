json.array!(@anime) do |anime|
  json.extract! anime, :name, :year, :description
  json.url anime_url(anime, format: :json)
end
