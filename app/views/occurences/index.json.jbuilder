json.array!(@occurences) do |occurence|
  json.extract! occurence, :id, :date, :device_brand, :device_model, :operation_system_version, :app_version, :assertion_id, :excp_id
  json.url occurence_url(occurence, format: :json)
end
