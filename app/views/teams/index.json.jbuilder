json.array!(@teams) do |team|
  json.extract! team, :id, :short_name, :long_name, :is_main, :in_league
  json.url team_url(team, format: :json)
end
