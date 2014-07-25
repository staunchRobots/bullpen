json.array!(@skills) do |skill|
  json.extract! skill, :id, :name, :percentage, :cv_id
  json.url skill_url(skill, format: :json)
end
