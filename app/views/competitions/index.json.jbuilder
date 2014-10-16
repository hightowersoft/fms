json.array!(@competitions) do |competition|
  json.extract! competition, :id, :name, :is_league
  json.url competition_url(competition, format: :json)
end
