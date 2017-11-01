json.array!(@guests) do |guest|
  json.extract! guest, :id, :user_id, :event_id, :attending
  json.url guest_url(guest, format: :json)
end
