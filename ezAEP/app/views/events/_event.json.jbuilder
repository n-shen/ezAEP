json.extract! event, :id, :event_name, :event_host, :event_start_date, :event_end_date, :event_desc, :event_code, :created_at, :updated_at
json.url event_url(event, format: :json)
