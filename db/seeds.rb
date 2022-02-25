# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

puts "Wiping seeds"
Booking.destroy_all
Costume.destroy_all
User.destroy_all

puts "Creating seeds"

file = URI.open('https://www.jardi-creation.be/wp-content/uploads/2020/01/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_1978396.jpg')
user = User.new(email: "hello@gmail.com", password: "123123", first_name: "Kevin", last_name: "Bra", phone_number: "0008634563")
user.photo.attach(io: file, filename: 'profile.jpeg', content_type: 'image/jpeg')
user.save
file = URI.open('https://www.jardi-creation.be/wp-content/uploads/2020/01/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_1978396.jpg')
user = User.create!(email: "brobro@gmail.com", password: "123123", first_name: "Levin", last_name: "koko", phone_number: "0009966563")
user.photo.attach(io: file, filename: 'profile2.jpeg', content_type: 'image/jpeg')
user.save
file = URI.open('https://www.jardi-creation.be/wp-content/uploads/2020/01/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_1978396.jpg')
user = User.create!(email: "brkkokiobro@gmail.com", password: "123123", first_name: "Jason", last_name: "kloolloo", phone_number: "0009969976563")
user.photo.attach(io: file, filename: 'profile3.jpeg', content_type: 'image/jpeg')
user.save
file = URI.open('https://www.jardi-creation.be/wp-content/uploads/2020/01/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_1978396.jpg')
user = User.create!(email: "lamilm@gmail.com", password: "123123", first_name: "Bruce", last_name: "Dino", phone_number: "0009964463")
user.photo.attach(io: file, filename: 'profile4.jpeg', content_type: 'image/jpeg')
user.save
file = URI.open('https://www.jardi-creation.be/wp-content/uploads/2020/01/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_1978396.jpg')
user = User.create!(email: "dhu@gmail.com", password: "123123", first_name: "Burton", last_name: "Kilo", phone_number: "0009968863")
user.photo.attach(io: file, filename: 'profile5.jpeg', content_type: 'image/jpeg')
user.save

file = URI.open('https://nerdist.com/wp-content/uploads/2022/02/spider-man-irl-meme.jpeg')
costume = Costume.create!(name: "Spiderman", user: User.all.sample, category: "Superhero",  size: 158, price_per_day: 21, available?: true, address: 'Bourse, Brussels')
costume.photo.attach(io: file, filename: 'spiderman.jpeg', content_type: 'image/jpeg')
costume.save

file = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPDRJ6Y0ssxwLI5wLepeLXwcaKMhWw7QTzWA&usqp=CAU')
costume = Costume.create!(name: "Batman", user: User.all.sample, category: "Superhero",  size: 146, price_per_day: 25, available?: true, address: 'Molenbeek, Brussels')
costume.photo.attach(io: file, filename: 'batman.jpeg', content_type: 'image/jpeg')
costume.save

file = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOC7fIuPz58wRgAte2eZeNBconBXHBA5JWRA&usqp=CAU')
costume = Costume.create!(name: "Wonderwoman", user: User.all.sample, category: "Superhero",  size: 123, price_per_day: 19, available?: true, address: 'Evere, Brussels')
costume.photo.attach(io: file, filename: 'wonderwoman.jpeg', content_type: 'image/jpeg')
costume.save

file = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgDEKyhWoPEtG3HQY2777YfGsX9ykuoqoPBQ&usqp=CAU')
costume = Costume.create!(name: "Herokuman", user: User.all.sample, category: "Superhero",  size: 186, price_per_day: 60, available?: true, address: 'Anderlecht, Brussels')
costume.photo.attach(io: file, filename: 'herokuman.jpeg', content_type: 'image/jpeg')
costume.save

file = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT89GAtNj0sS4wHG86M34Fc_05qhWC_cTCrAQ&usqp=CAU')
costume = Costume.create!(name: "Jonaman", user: User.all.sample, category: "Superhero",  size: 135, price_per_day: 34, available?: true, address: 'Cantersteen 10, Brussels')
costume.photo.attach(io: file, filename: 'jonaman.jpeg', content_type: 'image/jpeg')
costume.save


puts "Seeds created!"
