# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts 'start seeds...'

Product.destroy_all
product1 = Product.create({:name=>"tomato", :description=>"super tomato", :sku=>"123456", price_cents: 320})
product2 = Product.create({:name=>"milk", :description=>"super milk", :sku=>"123457",price_cents: 320})
product3 = Product.create({:name=>"bread", :description=>"super bread", :sku=>"123458",price_cents: 350})
product4 = Product.create({:name=>"bacon", :description=>"super bacon", :sku=>"123459",price_cents: 320})
product5 = Product.create({:name=>"cheese", :description=>"super cheese", :sku=>"123450",price_cents: 420})
puts "Total number of products: #{Product.all.count}"
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/atelier/verriere.jpg')
product1.photo.attach(io: file, filename: 'verriere.jpg', content_type: 'image/jpg')
puts 'number 1 finished'
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/atelier/verriere.jpg')
product2.photo.attach(io: file, filename: 'verriere.jpg', content_type: 'image/jpg')
puts 'number 2 finished'
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/atelier/verriere.jpg')
product3.photo.attach(io: file, filename: 'verriere.jpg', content_type: 'image/jpg')
puts 'number 3 finished'
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/atelier/verriere.jpg')
product4.photo.attach(io: file, filename: 'verriere.jpg', content_type: 'image/jpg')
puts 'number 4 finished'
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/atelier/verriere.jpg')
product5.photo.attach(io: file, filename: 'verriere.jpg', content_type: 'image/jpg')
puts 'number 5 finished'
puts '...'
puts 'seeds finished'
