class Player < ActiveRecord::Base
	POSITIONS = ["Goalkeeper", "Defender", "Midfielder", "Forward"]
	has_many :statistics

	def total_games
		return statistics.count
	end

	def total_mom
		mom = 0
		self.statistics.each do |stat|
			mom += 1 if stat.mom_manager
			mom += 1 if stat.mom_opposition
		end
		return mom
	end
	
	def total_stars
		stars = 0
		games = 0
		self.statistics.each do |stat|
			stars += stat.stars
			games += 1 if stat.stars > 0
		end
		return stars.to_s + " in " + games.to_s
	end

	def total_goals
		goals = 0
		self.statistics.each do |stat|
			goals += stat.goals
		end
		return goals
	end

	def total_yellow_cards
		cards = 0
		self.statistics.each do |stat|
			cards += 1 if stat.yellow_card
		end
		return cards
	end

	def total_red_cards
		cards = 0
		self.statistics.each do |stat|
			cards += 1 if stat.red_card
		end
		return cards
	end
end
