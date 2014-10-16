json.array!(@players) do |player|
  json.extract! player, :id, :firstname, :surname, :position, :bio
  json.url player_url(player, format: :json)
end
