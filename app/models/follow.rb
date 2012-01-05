class Follow < ActiveRecord::Base
  belongs_to :user
  #attr_accessible user_id
  #attr_accessible follow_user_id
end
