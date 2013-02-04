class Event < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :profile
  belongs_to :upgrade
  has_many :lineitems
  has_many :item_upgrades
  
  def add_profile(profile_id)
     current_item = lineitems.find_by_profile_id(profile_id)
       if current_item
       else
         current_item = lineitems.build(:profile_id => profile_id)
       end
       current_item
   end
   
   def add_upgrade(upgrade_id)
    current_upgrade = item_upgrades.find_by_upgrade_id(upgrade_id)
    if current_upgrade
    else
      current_upgrade = item_upgrades.build(:upgrade_id => upgrade_id)
    end
    current_upgrade
   end
  
end
