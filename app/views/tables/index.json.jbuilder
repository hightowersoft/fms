json.array!(@tables) do |table|
	json.name table.team.long_name
  json.extract! table, :id, :team_id, :played, :won, :drawn, :lost, :for, :against, :deducted
end
