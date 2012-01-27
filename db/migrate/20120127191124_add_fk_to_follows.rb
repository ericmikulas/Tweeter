class AddFkToFollows < ActiveRecord::Migration
  def change
    change_table :follows do|t|
    #add a foreign key
    t.foreign_key(:users,:column=>:follow_user_id)
      end
  end
end
