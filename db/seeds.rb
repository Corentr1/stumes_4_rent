# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Wiping seeds"
Costume.destroy_all

puts "Creating seeds"

user_one = User.create!(email: "hello@gmail.com", encrypted_password: "test", first_name: "Kevin", last_name: "Bra", phone_number: "0008634563", avatar_url: "kevinbrakkflf///dfd" )
user_two = User.create!(email: "brobro@gmail.com", encrypted_password: "t;lfkfst", first_name: "Levin", last_name: "koko", phone_number: "0009966563", avatar_url: "flklfklsdkfflf///dfd" )
user_three = User.create!(email: "brkkokiobro@gmail.com", encrypted_password: "t;lfkfkfkfkfst", first_name: "Jason", last_name: "kloolloo", phone_number: "0009969976563", avatar_url: "flklkdkdkflf///dfd" )
user_four = User.create!(email: "lamilm@gmail.com", encrypted_password: "tkkfkfkfst", first_name: "Bruce", last_name: "Dino", phone_number: "0009964463", avatar_url: "flklkdfFFlf///dfd" )
user_five = User.create!(email: "dhu@gmail.com", encrypted_password: "tkkdhust", first_name: "Burton", last_name: "Kilo", phone_number: "0009968863", avatar_url: "flklkdfF66Flf///dfd" )


costume_one = Costume.create!(name: "Spiderman", category: "Superhero",  size: 158, price_per_day: 21, available?: true, image_url: "aHR0cHM6Ly9pNS53YWxtYXJ0aW1hZ2VzLmNvbS9hc3IvODdkNTM1ZTctZWUyMS00MzJmLWE5N2UtYjNmZjhkZjA1Nzk3LjEwNDc5NjkyNGRmMjkyNGVlMzVhYjEyZGI5MGRiNTMyLmpwZWc")
costume_two = Costume.create!(name: "Batman", category: "Superhero",  size: 146, price_per_day: 25, available?: true, image_url: "aHR0cHM6Ly9pNS53YWxtYXJ0aW1hZ2VzLmNvbS9hc3IvODdkNTM1ZTctZWUyMS00MzJmLWE5N2UtYjNmZjhkZjA1Nzk3LjEwNDc5NjkyNGRmMjkyNGVlMzVhYjEyZGI5MGRiNTMyLmpwZWc")
costume_three = Costume.create!(name: "Wonderwoman", category: "Superhero",  size: 123, price_per_day: 19, available?: true, image_url: "aHR0cHM6Ly9pNS53YWxtYXJ0aW1hZ2VzLmNvbS9hc3IvODdkNTM1ZTctZWUyMS00MzJmLWE5N2UtYjNmZjhkZjA1Nzk3LjEwNDc5NjkyNGRmMjkyNGVlMzVhYjEyZGI5MGRiNTMyLmpwZWc")
costume_four = Costume.create!(name: "Herokuman", category: "Superhero",  size: 186, price_per_day: 60, available?: true, image_url: "aHR0cHM6Ly9pNS53YWxtYXJ0aW1hZ2VzLmNvbS9hc3IvODdkNTM1ZTctZWUyMS00MzJmLWE5N2UtYjNmZjhkZjA1Nzk3LjEwNDc5NjkyNGRmMjkyNGVlMzVhYjEyZGI5MGRiNTMyLmpwZWc")
costume_five = Costume.create!(name: "Jonaman", category: "Superhero",  size: 135, price_per_day: 34, available?: true, image_url: "aHR0cHM6Ly9pNS53YWxtYXJ0aW1hZ2VzLmNvbS9hc3IvODdkNTM1ZTctZWUyMS00MzJmLWE5N2UtYjNmZjhkZjA1Nzk3LjEwNDc5NjkyNGRmMjkyNGVlMzVhYjEyZGI5MGRiNTMyLmpwZWc")

booking_one = Booking.create!(status: "", start_date:, end_date:)

# create_table "bookings", force: :cascade do |t|
#   t.string "status"
#   t.date "start_date"
#   t.date "end_date"
#   t.bigint "costumes_id"
#   t.bigint "users_id"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.index ["costumes_id"], name: "index_bookings_on_costumes_id"
#   t.index ["users_id"], name: "index_bookings_on_users_id"
# end

puts "Seeds created!"
