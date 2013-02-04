class Profile < ActiveRecord::Base
  attr_accessible :name, :price
  has_many :upgrades
  belongs_to :event
  has_many :lineitems
  has_many :item_upgrades
  
end
