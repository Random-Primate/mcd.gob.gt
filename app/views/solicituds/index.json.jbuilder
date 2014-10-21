json.array!(@solicituds) do |solicitud|
  json.extract! solicitud, :id, :comunidades, :municipio, :departamento, :implementos, :solicitante_id
  json.url solicitud_url(solicitud, format: :json)
end
