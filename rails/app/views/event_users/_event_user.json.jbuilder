json.extract! event_user, :id, :invited_event_id, :guest_id, :status, :created_at, :updated_at
json.url event_user_url(event_user, format: :json)
