class Following < Follow
  belongs_to :user
  has_one :users, :through =>:user_id
  has_many :users, :through=> :follow_user_id
  attr_accessible :user_id
  attr_accessible :follow_user_id


    def self.get_following_count(user_id)
      return self.find_all_by_user_id(user_id).size
    end
end