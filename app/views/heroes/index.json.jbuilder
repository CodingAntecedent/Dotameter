json.array!(@heroes) do |hero|
  json.extract! hero, :id, :name, :valve_id
  json.url hero_url(hero, format: :json)
end
