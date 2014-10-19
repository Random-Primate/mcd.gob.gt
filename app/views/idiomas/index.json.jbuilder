json.array!(@idiomas) do |idioma|
  json.extract! idioma, :id, :name
  json.url idioma_url(idioma, format: :json)
end
