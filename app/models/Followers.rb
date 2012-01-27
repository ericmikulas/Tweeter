class Followers < Follow
  belongs_to :user
  attr_accessible :user_id, :follow_user_id
end