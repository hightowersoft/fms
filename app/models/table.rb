class Table < ActiveRecord::Base
  belongs_to :team
  after_find :add_points
  attr_accessor :points, :goal_difference

  def add_points
  	self.points = (self.won * 3) + self.drawn - self.deducted
  	self.goal_difference = self.for - self.against
  end
end
