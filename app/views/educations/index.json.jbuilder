json.array!(@educations) do |education|
  json.extract! education, :id, :title, :institution, :cv_id
  json.url education_url(education, format: :json)
end
