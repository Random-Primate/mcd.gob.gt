json.array!(@beneficiarios) do |beneficiario|
  json.extract! beneficiario, :id, :cui, :first_name, :second_first_name, :first_last_name, :second_last_name, :menor
  json.url beneficiario_url(beneficiario, format: :json)
end
