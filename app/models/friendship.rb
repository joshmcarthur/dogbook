class Friendship < ActiveRecord::Base
  belongs_to :dog
  belongs_to :friend, :class_name => "Dog"

  validate :dog_id, :presence => true
  validate :friend_id, :presence => true
end
