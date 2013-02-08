# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

[
  "German Shepherd",
  "Chihuahua",
  "Labrador",
  "Bulldog",
  "Beagle",
  "Poodle",
  "Husky"
].each do |breed_name|
  Breed.where(:name => breed_name).first_or_create
end