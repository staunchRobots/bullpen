json.array!(@practices) do |practice|
  json.extract! practice, :id, :name, :description, :cv_id
  json.url practice_url(practice, format: :json)
end
