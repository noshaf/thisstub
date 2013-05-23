class Ticket < ActiveRecord::Base
  attr_accessible :description, :price, :title, :photo
  validates_presence_of :price, :title
  validates :price, :numericality => {:greater_than => 0, :less_than => 10000}
  
end
