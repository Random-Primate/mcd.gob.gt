json.array!(@soliciteds) do |solicited|
  json.extract! solicited, :id, :amount, :solicitud_id, :implemento_id
  json.url solicited_url(solicited, format: :json)
end
