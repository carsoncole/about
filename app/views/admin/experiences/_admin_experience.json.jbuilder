json.extract! admin_experience, :id, :title, :name, :url, :start_date, :end_date, :description, :order, :created_at, :updated_at
json.url admin_experience_url(admin_experience, format: :json)
