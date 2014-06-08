json.array!(@series) do |series|
  json.extract! series, :name, :date_started
  json.url series_url(series, format: :json)
end
