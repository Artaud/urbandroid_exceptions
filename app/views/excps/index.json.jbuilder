json.array!(@excps) do |excp|
  json.extract! excp, :id, :fixed, :date_fixed, :excp_thread, :excp_trace, :notes, :user_id
  json.url excp_url(excp, format: :json)
end
