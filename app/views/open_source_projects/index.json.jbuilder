json.array!(@open_source_projects) do |open_source_project|
  json.extract! open_source_project, :id, :url, :open_source_id
  json.url open_source_project_url(open_source_project, format: :json)
end
