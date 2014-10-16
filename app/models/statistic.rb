class Statistic < ActiveRecord::Base
	belongs_to :fixtures
	belongs_to :players
end
