json.extract! event, :id, :issue_id, :user_id, :action, :from_state, :to_state, :metadata, :created_at, :updated_at
json.url event_url(event, format: :json)
