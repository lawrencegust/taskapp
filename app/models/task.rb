class Task < ActiveRecord::Base
  attr_accessible :complete, :description, :title, :user_id

  belongs_to :user 
  belongs_to :project
  
end
