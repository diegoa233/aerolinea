json.array!(@mesagges) do |mesagge|
  json.extract! mesagge, :id, :message
  json.url mesagge_url(mesagge, format: :json)
end
