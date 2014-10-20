json.array!(@tables) do |table|
  json.extract! table, :id, :team_id_id, :played, :won, :drawn, :lost, :for, :against, :deducted
  json.url table_url(table, format: :json)
end
