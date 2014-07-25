json.array!(@project_interest_points) do |project_interest_point|
  json.extract! project_interest_point, :id, :content, :project_id
  json.url project_interest_point_url(project_interest_point, format: :json)
end
