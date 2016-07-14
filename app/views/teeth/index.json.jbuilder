json.array!(@teeth) do |tooth|
  json.extract! tooth, :id, :pic_name, :times
  json.url tooth_url(tooth, format: :json)
end
