json.array!(@klasses) do |klass|
  json.extract! klass, :id, :name, :jahrgang
  json.url klass_url(klass, format: :json)
end
