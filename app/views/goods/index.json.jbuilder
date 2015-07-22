json.array!(@goods) do |good|
  json.extract! good, :id, :name, :price_type, :price_value, :size
  json.url good_url(good, format: :json)
end
