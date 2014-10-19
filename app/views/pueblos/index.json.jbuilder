json.array!(@pueblos) do |pueblo|
  json.extract! pueblo, :id, :name
  json.url pueblo_url(pueblo, format: :json)
end
