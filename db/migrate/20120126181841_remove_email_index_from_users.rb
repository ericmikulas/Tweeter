class RemoveEmailIndexFromUsers < ActiveRecord::Migration
  def up
    remove_index :users, :column=>email
    add_index :users, :username,  :uniqueness=>true
  end

  def down
  end
end
