# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Charging Seeds..."
user1 = User.create(email: 'user1@mail.com', username: 'user1', name: 'Usuario 1', password: '123456')
User.find_by(id: 1).avatar.attach(io: File.open("app/assets/images/Rectangle-6.jpg"), filename: "Rectangle-6.jpg")
user2 = User.create(email: 'user2@mail.com', username: 'user2', name: 'Usuario 2', password: '123456')
User.find_by(id: 2).avatar.attach(io: File.open("app/assets/images/Rectangle-1.jpg"), filename: "Rectangle-1.jpg")
user3 = User.create(email: 'user3@mail.com', username: 'user3', name: 'Usuario 3', password: '123456')
User.find_by(id: 3).avatar.attach(io: File.open("app/assets/images/Rectangle-2.jpg"), filename: "Rectangle-2.jpg")
user4 = User.create(email: 'user4@mail.com', username: 'user4', name: 'Usuario 4', password: '123456')
User.find_by(id: 4).avatar.attach(io: File.open("app/assets/images/Rectangle-3.jpg"), filename: "Rectangle-3.jpg")
user5 = User.create(email: 'user5@mail.com', username: 'user5', name: 'Usuario 5', password: '123456')
User.find_by(id: 5).avatar.attach(io: File.open("app/assets/images/Rectangle-4.jpg"), filename: "Rectangle-4.jpg")
tweet_principal = Tweet.create(body:"Tweet creado por Usuario 1",user:User.first)
tweet_hijo_principal = Tweet.create(body:"Tweet creado por user2",user:User.second)
tweet2 = Tweet.create(body:"Creado por el user 3",user:User.third)
tweet3 = Tweet.create(body:"Creado por el user 4",user:User.fourth)
tweet4 = Tweet.create(body:"Creado por el user 5",user:User.last)
Comment.create(body: "Primer comentario random", user_id: 1, tweet_id: rand(1-5))
Comment.create(body: "Segundo comentario random", user_id: 2, tweet_id: rand(1-5))
Comment.create(body: "Tercer comentario random", user_id: 3, tweet_id: rand(1-5))
Comment.create(body: "Cuarto comentario random", user_id: 4, tweet_id: rand(1-5))
Comment.create(body: "Quinto comentario random", user_id: 5, tweet_id: rand(1-5))
Comment.create(body: "Sexto comentario random", user_id: 3, tweet_id: rand(1-5))
Comment.create(body: "Séptimo comentario random", user_id: 2, tweet_id: rand(1-5))
puts "Seeds Charged"