class Dog < ActiveRecord::Base
  has_many :friendships
  has_many :friends, :through => :friendships

  validate :name, :presence => true
  validate :breed_id, :presence => true

  belongs_to :breed
end
