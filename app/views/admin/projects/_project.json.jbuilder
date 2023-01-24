json.extract! project, :id, :name, :source_url, :description, :image_url, :working_url, :order, :created_at, :updated_at
json.url project_url(project, format: :json)
