json.array!(@trips) do |trip|
  json.extract! trip, :id, :title, :description, :latitude, :longitude, :start_date, :end_date, :trip_notes
  json.url trip_url(trip, format: :json)
end
