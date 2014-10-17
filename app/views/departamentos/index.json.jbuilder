json.array!(@departamentos) do |departamento|
  json.extract! departamento, :id, :name
  json.url departamento_url(departamento, format: :json)
end
