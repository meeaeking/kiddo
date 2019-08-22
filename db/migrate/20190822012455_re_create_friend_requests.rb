class ReCreateFriendRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :friend_requests do |t|
      t.references :user, null: false, foreign_key: true
      t.references :friend, index: true

      t.timestamps
    end
  end
end
