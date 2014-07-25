json.array!(@experiences) do |experience|
  json.extract! experience, :id, :name, :years, :cv_id
  json.url experience_url(experience, format: :json)
end
