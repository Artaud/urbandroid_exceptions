json.array!(@assertions) do |assertion|
  json.extract! assertion, :id, :description, :notes, :user_id
  json.url assertion_url(assertion, format: :json)
end
