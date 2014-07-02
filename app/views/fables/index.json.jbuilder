json.array!(@fables) do |fable|
  json.extract! fable, :id, :date
  json.url fable_url(fable, format: :json)
end
