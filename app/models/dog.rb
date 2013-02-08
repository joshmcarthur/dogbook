class Dog < ActiveRecord::Base

  mount_uploader :profile_image, ImageUploader

  has_many :friendships
  has_many :friends, :through => :friendships

  validates :name, :presence => true
  validates :breed_id, :presence => true

  belongs_to :breed
end
