json.array!(@implementos) do |implemento|
  json.extract! implemento, :id, :name, :piezas
  json.url implemento_url(implemento, format: :json)
end
