module TablesHelper
	def generate_base_table
  	teams = Team.where in_league: true
  	teams.each do |team|
  		Table.create team_id: team.id, played: 0, won: 0, drawn: 0, lost: 0, for: 0, against: 0, deducted: 0
  	end
  end

  def wipe_base_table
  	Table.destroy_all
  end
end
