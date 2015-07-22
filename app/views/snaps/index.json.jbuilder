json.array!(@snaps) do |snap|
  json.extract! snap, :id
  json.url snap_url(snap, format: :json)
end
