class Player < ActiveRecord::Base
	POSITIONS = ["Goalkeeper", "Defender", "Midfielder", "Forward"]
	has_many :statistics

	def format_list_of_games order, fixture, num = nil
		home = fixture.home.short_name
		away = fixture.away.short_name
		suffix = ""
		suffix = " (x#{num})" if num
		return order.to_s + ") " + home + " v " + away + suffix + "<br />"
	end

	def total_games
		return statistics.count
	end

	def list_of_games
		games = ""
		i = 1
		self.statistics.each do |stat|
			games += format_list_of_games i, stat.fixture
			i += 1
		end
		return games
	end

	def total_mom
		mom = 0
		self.statistics.each do |stat|
			mom += 1 if stat.mom_manager
			mom += 1 if stat.mom_opposition
		end
		return mom
	end

	def list_of_mom
		games = ""
		i = 1
		self.statistics.each do |stat|
			if stat.mom_opposition
				games += format_list_of_games i, stat.fixture
				i += 1
			end
			if stat.mom_manager
				games += format_list_of_games i, stat.fixture
				i += 1
			end
		end
		return games
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

	def list_of_stars
		games = ""
		i = 1
		self.statistics.each do |stat|
			if stat.stars > 0
				games += format_list_of_games i, stat.fixture, stat.stars
				i += 1
			end
		end
		return games
	end

	def total_goals
		goals = 0
		self.statistics.each do |stat|
			goals += stat.goals
		end
		return goals
	end

	def list_of_goals
		games = ""
		i = 1
		self.statistics.each do |stat|
			if stat.goals > 0
				games += format_list_of_games i, stat.fixture, stat.goals
				i += 1
			end
		end
		return games
	end

	def total_yellow_cards
		cards = 0
		self.statistics.each do |stat|
			cards += 1 if stat.yellow_card
		end
		return cards
	end

	def list_of_yellow_cards
		games = ""
		i = 1
		self.statistics.each do |stat|
			if stat.yellow_card
				games += format_list_of_games i, stat.fixture
				i += 1
			end
		end
		return games
	end

	def total_red_cards
		cards = 0
		self.statistics.each do |stat|
			cards += 1 if stat.red_card
		end
		return cards
	end

	def list_of_red_cards
		games = ""
		i = 1
		self.statistics.each do |stat|
			if stat.red_card
				games += format_list_of_games i, stat.fixture
				i += 1
			end
		end
		return games
	end
end
