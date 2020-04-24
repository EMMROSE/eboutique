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
product1.photo.attach(io: file, filename: 'verriere.jpg', content_type: 'image/jpg')
product2 = Product.create({:name=>"milk", :description=>"super milk", :sku=>"123457",price_cents: 320})
product2.photo.attach(io: file, filename: 'verriere.jpg', content_type: 'image/jpg')
product3 = Product.create({:name=>"bread", :description=>"super bread", :sku=>"123458",price_cents: 320})
product3.photo.attach(io: file, filename: 'verriere.jpg', content_type: 'image/jpg')
product4 = Product.create({:name=>"bacon", :description=>"super bacon", :sku=>"123459",price_cents: 320})
product4.photo.attach(io: file, filename: 'verriere.jpg', content_type: 'image/jpg')
product5 = Product.create({:name=>"cheese", :description=>"super cheese", :sku=>"123450",price_cents: 320})
product5.photo.attach(io: file, filename: 'verriere.jpg', content_type: 'image/jpg')
puts "Total number of products: #{Product.all.count}"
puts 'seeds finished'
