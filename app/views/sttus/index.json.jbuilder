json.array!(@sttus) do |sttu|
  json.extract! sttu, :id, :name, :content
  json.url sttu_url(sttu, format: :json)
end
