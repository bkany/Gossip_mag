# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

10.times do
	c = City.new(name: Faker::Address.city, zip_code: Faker::Address.zip)
	c.save
end

puts "Remplissage de la table City - OK"

10.times do
	u = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,  description: Faker::Lorem.sentence, email: Faker::Internet.email, age: rand(20..40), password: Faker::Lorem.word, city_id: City.all.sample.id)
	u.save
end

puts "Remplissage de la table Users - OK"

10.times do
	t = Tag.new(title: Faker::Lorem.word)
	t.save
end

puts "Remplissage de la table Tag - OK"

20.times do
	p = Potin.new(title: Faker::Lorem.characters(number: 10), content: Faker::Lorem.sentence, user_id: User.all.sample.id)
	p.save
end

puts "Remplissage de la table Potin - OK"

Potin.all.each do |p|
	t = Taggossip.new(tag_id: Tag.all.sample.id, potin_id: p.id)
	t.save
end

puts "Affectation d'un Tag à un Potin - OK"

15.times do
	c = Comment.new(title: Faker::Lorem.characters(number: 8), content: Faker::Lorem.sentence, user_id: User.all.sample.id, potin_id: Potin.all.sample.id)
	c.save
end

puts "Remplissage de la table Comment - OK"



