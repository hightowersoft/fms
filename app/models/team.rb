class Team < ActiveRecord::Base
	validates :short_name, :long_name, presence: true
	has_many :fixtures
end
