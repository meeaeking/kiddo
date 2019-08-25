class Api::FriendshipsController < ApplicationController
  def index
    @friendships = Friendship.all
    render 'index.json.jb'
  end

  def notfriends
    @notfriends = User.all - current_user.friends - [current_user]
    render 'notfriends.json.jb'
  end

  def seefriends
    @seefriends = current_user.friends
    render 'seefriends.json.jb'
  end
end
