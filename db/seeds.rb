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


user_host1 = User.create!({ email: "benrarfa@gmail.com", password: "123456" })

user_host2 = User.create!({ email: "benzema@gmail.com", password: "123456" })

user_host3 = User.create!({ email: "chichi@gmail.com", password: "123456" })

user1 = User.create!({ email: "john@gmail.com", password: "123456" })

user2 = User.create!({ email: "cool@gmail.com", password: "123456" })

user3 = User.create!({ email: "dommage@gmail.com", password: "123456" })

ad1 = Ad.create!({ description: "big bed", user: user_host1})

ad2 = Ad.create!({ description: "chi chi bed", user: user_host1})

ad3 = Ad.create!({ description: "small bed", user: user_host2})


booking1 = Booking.create!({ user: user2, ad: ad1})

booking2 = Booking.create!({ user: user3, ad: ad3})

booking1 = Booking.create!({ user: user1, ad: ad2})











