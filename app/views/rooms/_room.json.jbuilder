json.extract! room, :id, :building_id, :name, :code, :floor, :created_at, :updated_at
json.url room_url(room, format: :json)
