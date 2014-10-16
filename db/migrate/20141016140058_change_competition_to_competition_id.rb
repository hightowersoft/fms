class ChangeCompetitionToCompetitionId < ActiveRecord::Migration
  def change
  	reversible do |dir|
  		dir.up { rename_column :fixtures, :competition, :competition_id }
  		dir.down { rename_column :fixtures, :competition_id, :competition }
  	end
  end
end
