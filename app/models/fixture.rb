class Fixture < ActiveRecord::Base
	has_many :statistics
	belongs_to :home, class_name: "Team", foreign_key: "home_team"
	belongs_to :away, class_name: "Team", foreign_key: "away_team"
	belongs_to :competition, class_name: "Competition", foreign_key: "competition_id"
end
