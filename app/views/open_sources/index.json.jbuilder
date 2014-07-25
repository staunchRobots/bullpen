json.array!(@open_sources) do |open_source|
  json.extract! open_source, :id, :cv_id
  json.url open_source_url(open_source, format: :json)
end
