json.extract! storage, :id, :name, :manager, :address, :description, :created_at, :updated_at
json.url storage_url(storage, format: :json)
