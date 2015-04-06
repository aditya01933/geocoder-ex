json.array!(@clots) do |clot|
  json.extract! clot, :id, :name, :location
  json.url clot_url(clot, format: :json)
end
