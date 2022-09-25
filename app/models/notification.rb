class Notification < ApplicationRecord
  belongs_to :sub_item, optional: true
  belongs_to :user,     optional: true
  
end
