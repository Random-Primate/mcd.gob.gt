json.array!(@expedientes) do |expediente|
  json.extract! expediente, :id, :num_gestion, :num_exp
  json.url expediente_url(expediente, format: :json)
end
