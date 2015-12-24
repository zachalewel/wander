json.array!(@places) do |place|
  json.extract! place, :id, :name, :activity, :latitude, :longitude, :state, :geocoded_name, :description, :directions, :comments, :picture
  json.url place_url(place, format: :json)
end
