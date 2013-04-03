class Project < ActiveRecord::Base
  attr_accessible :title

  belongs_to :team
  has_many :users, :through => :team
  has_many :tasks
end
