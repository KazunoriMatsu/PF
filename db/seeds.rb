# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Question.create!(
# 	title: "レンタカーについて",
# 	body: "空港から近いレンタカー屋さんでおすすめを教えてください。",
# 	status: 0,
# 	categorie_id: 0,
# 	)



Customer.create!(
	last_name:  "test",
	first_name: "test",
	last_name_kana: "test",
	first_name_kana: "test",
	phone_number1: '123',
	phone_number2: '123',
	phone_number3: '123',
	email: 'test@test',
	password: '123456',
	deleted_at: "",
	)


50.times do |n|
 Customer.create!(first_name: Faker::Bank.name,
				  last_name: Faker::Name.name,
				  last_name_kana: Faker::Name.name,
				  first_name_kana: Faker::Name.name,
				  phone_number1: Faker::Number.between(from: 1, to: 9999),
				  phone_number2: Faker::Number.between(from: 1, to: 9999),
				  phone_number3: Faker::Number.between(from: 1, to: 9999),
				  email: Faker::Internet.unique.free_email,
				  password: Faker::Number.between(from: 100000, to: 999999),
				  deleted_at: "")
end


10.times do |n|
	Categorie.create!(
		name: Faker::Music.unique.genre,
	)
end

# 42.times do |n|
#   Post.create!(title: "title",
#                   image_id: "",
#                   body: "sample text sample text sample text sample text sample text" * 2,
#                   categorie_id: Faker::Number.between(from: 1, to: 10),
#                   )
# end

42.times do |n|
  title  = "Question-#{n+1}"
  body = "sample text sample text sample text sample text sample text" * 2
  Question.create!(title:  title,
                  status:     0,
                  body: body,
                  categorie_id: Faker::Number.between(from: 1, to: 10),
                  )
end





