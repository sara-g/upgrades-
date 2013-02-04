class ItemUpgrade < ActiveRecord::Base
  attr_accessible :event_id, :profile_id, :upgrade_id
  belongs_to :upgrade
  belongs_to :profile
  belongs_to :event
end
