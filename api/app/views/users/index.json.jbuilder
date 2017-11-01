json.array!(@users) do |user|
  json.extract! user, :id, :name, :avatarUrl
  json.url user_url(user, format: :json)
end
