json.extract! event_item, :id, :event_id, :item_id, :assigned_person_id, :created_at, :updated_at
json.url event_item_url(event_item, format: :json)
