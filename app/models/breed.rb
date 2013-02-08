class Breed < ActiveRecord::Base
  validate :name, :presence => true
  has_many :dogs
end
