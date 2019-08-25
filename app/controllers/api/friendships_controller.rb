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

  def create
    @friendship = Friendship.new(
      user_id: current_user.id,
      friend_id: params[:friend_id]
      )
    p current_user.id
    p friend_id: params[:friend_id]
    @friendship.save!

    render 'show.json.jb'
  end
end
