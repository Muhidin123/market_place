json.extract! transaction, :id, :user_id, :review, :rating, :item_id, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
