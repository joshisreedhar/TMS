class Theatre < ActiveRecord::Base
  attr_accessible :address, :imageurl, :name
  has_many :shows, :dependent => :destroy

  validates_presence_of :name
end
