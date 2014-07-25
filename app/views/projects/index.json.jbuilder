json.array!(@projects) do |project|
  json.extract! project, :id, :name, :url, :description, :cv_id
  json.url project_url(project, format: :json)
end
