class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer :user_id
      t.date :time
      t.string :text

      t.timestamps
    end
  end
end
