class User < ActiveRecord::Base
  attr_accessible :company, :email, :first_name, :last_name, :password

  has_secure_password
  has_many :rosters
  has_many :teams
  has_many :teams, :through => :rosters
  has_many :projects, :through => :teams
  has_many :tasks, :through => :projects

end
