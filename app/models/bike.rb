class Bike < ActiveRecord::Base
  attr_accessible :title, :url

  validates_presence_of :url
  
end
