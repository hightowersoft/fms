json.array!(@fixtures) do |fixture|
  json.extract! fixture, :id, :home_team, :away_team, :competition, :date, :played, :home_score, :away_score, :report
  json.url fixture_url(fixture, format: :json)
end
