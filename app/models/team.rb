class Team < ActiveRecord::Base
  attr_accessible :name

  has_many :rosters
  has_many :users, :through => :rosters

end
