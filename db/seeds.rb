# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(name: "Computer", price: 800, image_url: "https://images-na.ssl-images-amazon.com/images/I/7161%2BB-5StL._AC_SL1500_.jpg", description: "This is a description of the Computer product.")

Product.create(name: "Keyboard", price: 50, image_url: "https://mercari-images.global.ssl.fastly.net/photos/m99461935228_1.jpg?1598297530", description: "This is a description of the Keyboard product.")