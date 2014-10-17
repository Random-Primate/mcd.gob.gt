json.array!(@municipios) do |municipio|
  json.extract! municipio, :id, :name, :departamento_id
  json.url municipio_url(municipio, format: :json)
end
