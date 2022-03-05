json.extract! prospect, :id, :first_name, :last_name, :phone, :status, :user_id, :created_at, :updated_at
json.url prospect_url(prospect, format: :json)
