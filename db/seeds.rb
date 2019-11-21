# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Ad.destroy_all
User.destroy_all
Booking.destroy_all


user_host1 = User.create!({ email: "user_host1@gmail.com", password: "123456" })

user_host2 = User.create!({ email: "user_host2@gmail.com", password: "123456" })

user_host3 = User.create!({ email: "user_host3@gmail.com", password: "123456" })

user1 = User.create!({ email: "user1@gmail.com", password: "123456" })

user2 = User.create!({ email: "user2@gmail.com", password: "123456" })

user3 = User.create!({ email: "user3@gmail.com", password: "123456" })

ad1 = Ad.create!({ title:"big bed", description: "Amazing king size bed with amazing mattress", city: "Montreal", price_per_hour: "3 CAD", price_per_night: "15 CAD", user: user_host1})

ad2 = Ad.create!({ title: "chi chi bed", description: "Perfect bed for chi chi", city: "Montreal", price_per_hour: "4 CAD", price_per_night: "16 CAD",user: user_host1})

ad3 = Ad.create!({ title: "small bed", description: "Small bed perfect for a quick nap", city: "Montreal", price_per_hour: "2 CAD", price_per_night: "12 CAD", user: user_host2})

booking1 = Booking.create!({ user: user2, ad: ad1, status: "pending"})

booking2 = Booking.create!({ user: user_host1, ad: ad3, status: "pending"})

booking3 = Booking.create!({user: user1, ad: ad2, status: "pending"})









