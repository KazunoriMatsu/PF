# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Question.create!(
	title: "レンタカーについて",
	body: "空港から近いレンタカー屋さんでおすすめを教えてください。",
	status: 0,
	category_id: 0,
	)


20.times do |n|
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
	)
end
