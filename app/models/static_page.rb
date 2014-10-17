class StaticPage < ActiveRecord::Base
	validates :name, :body, presence: true
end
