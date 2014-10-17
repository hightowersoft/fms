class Competition < ActiveRecord::Base
	has_many :fixtures

	validates :name, presence: true
end
