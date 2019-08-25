class Api::FriendshipsController < ApplicationController
  def index
    @friendships = Friendship.all
    render 'index.json.jb'
  end

  def notfriends
    @notfriends = User.all - current_user.friends - [current_user]
    render 'notfriends.json.jb'
  end
end
