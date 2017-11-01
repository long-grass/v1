json.array!(@events) do |event|
  json.extract! event, :id, :time, :title, :type
  json.url event_url(event, format: :json)
end
