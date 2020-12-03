json.extract! item, :id, :title, :description, :category, :price, :user, :created_at, :updated_at
json.url item_url(item, format: :json)
