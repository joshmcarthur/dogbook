class Dog < ActiveRecord::Base
  has_many :friendships
  has_many :friends, :through => :friendships

  validates :name, :presence => true
  validates :breed_id, :presence => true

  belongs_to :breed
end
