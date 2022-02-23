# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Wiping seeds"
Booking.destroy_all
Costume.destroy_all
User.destroy_all

puts "Creating seeds"

User.create!(email: "hello@gmail.com", password: "123123", first_name: "Kevin", last_name: "Bra", phone_number: "0008634563")
User.create!(email: "brobro@gmail.com", password: "123123", first_name: "Levin", last_name: "koko", phone_number: "0009966563")
User.create!(email: "brkkokiobro@gmail.com", password: "123123", first_name: "Jason", last_name: "kloolloo", phone_number: "0009969976563")
User.create!(email: "lamilm@gmail.com", password: "123123", first_name: "Bruce", last_name: "Dino", phone_number: "0009964463")
User.create!(email: "dhu@gmail.com", password: "123123", first_name: "Burton", last_name: "Kilo", phone_number: "0009968863")

Costume.create!(name: "Spiderman", user: User.all.sample, category: "Superhero",  size: 158, price_per_day: 21, available?: true)
Costume.create!(name: "Batman", user: User.all.sample, category: "Superhero",  size: 146, price_per_day: 25, available?: true)
Costume.create!(name: "Wonderwoman", user: User.all.sample, category: "Superhero",  size: 123, price_per_day: 19, available?: true)
Costume.create!(name: "Herokuman", user: User.all.sample, category: "Superhero",  size: 186, price_per_day: 60, available?: true)
Costume.create!(name: "Jonaman", user: User.all.sample, category: "Superhero",  size: 135, price_per_day: 34, available?: true)

Booking.create!(user: User.all.sample, costume: Costume.all.sample, status: "pending", start_date: Date.today, end_date: Date.today + 5.days)
Booking.create!(user: User.all.sample, costume: Costume.all.sample, status: "accepted", start_date: Date.today + 3.days, end_date: Date.today + 6.days)

puts "Seeds created!"
