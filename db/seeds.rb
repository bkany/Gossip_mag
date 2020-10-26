# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

10.times do
	User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,  description: Faker::Lorem.sentence, email: Faker::Internet.email, age: rand(20..40))
end

10.times do
	Tag.create!(title: Faker::Lorem.word)
end

10.times do
	City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip)
end

20.times do
	Potin.create!(title: Faker::Lorem.word, content: Faker::Lorem.sentence, user_id: User.all.sample.id)
end

Potin.all.each do |p|
	Taggossip.create!(tag_id: Tag.all.sample.id, potin_id: p.id)
end
