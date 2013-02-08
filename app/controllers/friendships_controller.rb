class FriendshipsController < ApplicationController
  before_filter :find_dog

  def index

  end

  def create
    @dog.friendships.create(params[:friendship])
    redirect_to [@dog, Friendship], :notice => "Friend added."
  end

  def destroy
    @friendship = @dog.friendships.find(params[:id])
    @friendship.destroy
    redirect_to [@dog, Friendship], :notice => "Friend removed."
  end

  private

  def find_dog
    @dog ||= Dog.find(params[:dog_id])
  end

end
