class Lineitem < ActiveRecord::Base
  attr_accessible :event_id, :profile_id, :upgrade_id
  belongs_to :event
  belongs_to :profile
  belongs_to :upgrade
end
