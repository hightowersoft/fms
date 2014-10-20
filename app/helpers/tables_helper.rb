module TablesHelper
	def generate_base_table
  	teams = Team.all
  	teams.each do |team|
  		Table.create team_id: team.id, played: 0, won: 0, drawn: 0, lost: 0, for: 0, against: 0, deducted: 0
  	end
  end
end
