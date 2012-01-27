class Follow < ActiveRecord::Base
  belongs_to :user
  has_one :user, :through =>:user_id
  has_one :user, :through=> :follow_user_id
  attr_accessible :user_id
  attr_accessible :follow_user_id
end
