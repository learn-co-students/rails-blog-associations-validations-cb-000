json.array!(@ysers) do |yser|
  json.extract! yser, :id, :name
  json.url yser_url(yser, format: :json)
end
