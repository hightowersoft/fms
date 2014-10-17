class Statistic < ActiveRecord::Base
	belongs_to :fixture
	belongs_to :player

	validates :fixture_id, :player_id, :mom_manager, :mom_opposition, :goals, :stars, :yellow_card, :red_card, presence: true
end
