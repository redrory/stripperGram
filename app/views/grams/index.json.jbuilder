json.array!(@grams) do |gram|
  json.extract! gram, :id, :user_id, :photo
  json.url gram_url(gram, format: :json)
end
