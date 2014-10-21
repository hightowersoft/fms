json.array!(@contacts) do |contact|
  json.extract! contact, :id, :from_name, :from_email, :message
  json.url contact_url(contact, format: :json)
end
