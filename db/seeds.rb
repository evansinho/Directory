# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
(1..1000).each do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    title: %w[mr mrs miss sir].sample,
    phone: Faker::PhoneNumber.phone_number,
    status: %w[active inactive].sample,
  )
end
