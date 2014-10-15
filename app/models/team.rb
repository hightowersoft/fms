class Team < ActiveRecord::Base
	validates :short_name, :long_name, presence: true
end
