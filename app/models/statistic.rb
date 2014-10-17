class Statistic < ActiveRecord::Base
	belongs_to :fixture
	belongs_to :player
end
