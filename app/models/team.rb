class Team < ActiveRecord::Base
  attr_accessible :name, :user_id

  after_create :add_to_roster

  belongs_to :user
  has_many :rosters
  has_many :users, :through => :rosters
  has_many :projects
  has_many :tasks, :through => :projects

  def add_to_roster
    @roster = Roster.new
    @roster.user_id = self.user_id
    @roster.team_id = self.id
    @roster.save
  end

end
