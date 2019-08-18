class DeleteFriendRequest < ActiveRecord::Migration[6.0]
  def change
    drop_table(FriendRequest)
  end
end
