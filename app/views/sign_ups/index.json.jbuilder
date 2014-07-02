json.array!(@sign_ups) do |sign_up|
  json.extract! sign_up, :id, :fable_id, :user_id, :topic, :beverage_request
  json.url sign_up_url(sign_up, format: :json)
end
