class Fixture < ActiveRecord::Base
	has_many :statistics
	belongs_to :home, class_name: "Team", foreign_key: "home_team"
	belongs_to :away, class_name: "Team", foreign_key: "away_team"
end
