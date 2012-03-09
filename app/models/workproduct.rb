class Workproduct < ActiveRecord::Base
  has_one :user
  
  attr_accessible :user_id, :workname, :worktype, :description, :tehnology
end
