class DeleteFriendshipTable < ActiveRecord::Migration[6.0]
  def change
    def change
      drop_table(Friendship)
    end

  end
end
