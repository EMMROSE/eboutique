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
product1 = Product.create({:name=>"Planches", :description=>"Jeux de planches en bois rectangulaires pour décorer votre chemin de table", :sku=>"123456", price_cents: 3200})
product2 = Product.create({:name=>"Assiette Poisson", :description=>"Assiette à poisson  Bitossi", :sku=>"123457",price_cents: 1500})
product3 = Product.create({:name=>"Planche ronde", :description=>"Planche ronde en teck (dimension 90cm de diamètre)", :sku=>"123458",price_cents: 5000})
product4 = Product.create({:name=>"Assiettes", :description=>"Lot de 6 assiettes la Vita é Bella", :sku=>"123459",price_cents: 2400})
product5 = Product.create({:name=>"Assiette 70's", :description=>"Assiette en terre cuite collection 70's", :sku=>"123450",price_cents: 2500})
puts "Total number of products: #{Product.all.count}"
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/samedi28/planche_1.jpg')
product1.photo.attach(io: file, filename: 'planche_1.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/samedi28/planche_2.jpg')
product1.cover.attach(io: file, filename: 'planche_2.jpg', content_type: 'image/jpg')
puts 'number 1 finished'
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/samedi28/bitossi_assiette_poisson.jpg')
product2.photo.attach(io: file, filename: 'bitossi_assiette_poisson.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/samedi28/bitossi_assiette_poisson2.jpg')
product2.cover.attach(io: file, filename: 'bitossi_assiette_poisson2.jpg', content_type: 'image/jpg')
puts 'number 2 finished'
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/samedi28/Planche_ronde1.jpg')
product3.photo.attach(io: file, filename: 'Planche_ronde1.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/samedi28/Planche_ronde2.jpg')
product3.cover.attach(io: file, filename: 'Planche_ronde2.jpg', content_type: 'image/jpg')
puts 'number 3 finished'
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/samedi28/assiette_la_vita1.jpg')
product4.photo.attach(io: file, filename: 'assiette_la_vita1.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/samedi28/assiette_la_vita2.jpg')
product4.cover.attach(io: file, filename: 'assiette_la_vita2.jpg', content_type: 'image/jpg')
puts 'number 4 finished'
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/samedi28/70_assiette1.jpg')
product5.photo.attach(io: file, filename: '70_assiette1.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/samedi28/70_assiette2.jpg')
product5.cover.attach(io: file, filename: '70_assiette2.jpg', content_type: 'image/jpg')
puts 'number 5 finished'
puts '...'

puts 'Events'
puts 'Destroying old Events'
puts '----------------'
Event.destroy_all
puts 'Creating Events'
puts '----------------'
event1 = Event.new(upcoming: true, title: 'Home Garden', description:"Aménager un jardin dans son appartement, un jeu d'enfant avec nos tutos. Rejoignez-nous à l'Atelier 28 le DImanche 12 Juin (10h00).")
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/atelier/verriere.jpg')
event1.cover.attach(io: file, filename: 'verriere.jpg', content_type: 'image/jpg')
# file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1588175369/atelier/article3.jpg')
# article1.cover.attach(io: file, filename: 'garde.jpg', content_type: 'image/jpg')
event1.save!
puts "event n°1 create"

event2 = Event.new(upcoming: true, title: 'Mode 2020', description:"Aménager un jardin dans son appartement, un jeu d'enfant avec nos tutos. Rejoignez-nous à l'Atelier 28 le DImanche 12 Juin (10h00).")
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/atelier/verriere.jpg')
event2.cover.attach(io: file, filename: 'verriere.jpg', content_type: 'image/jpg')
# file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1588175369/atelier/article3.jpg')
# article1.cover.attach(io: file, filename: 'garde.jpg', content_type: 'image/jpg')
event2.save!
puts "event n°2 create"
event3 = Event.new(upcoming: true, title: 'Apéro & Déco', description:"Découvrer notre nouvelle collection autour d'un verre à l'Atelier 28 le Vendredi 10 Juin (19h00).")
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/atelier/verriere.jpg')
event3.cover.attach(io: file, filename: 'verriere.jpg', content_type: 'image/jpg')
# file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1588175369/atelier/article3.jpg')
# article1.cover.attach(io: file, filename: 'garde.jpg', content_type: 'image/jpg')
event3.save!
puts "event n°3 create"

event4 = Event.new(upcoming: false, title: 'Home Garden', description:"Aménager un jardin dans son appartement, un jeu d'enfant avec nos tutos. Rejoignez-nous à l'Atelier 28 le DImanche 12 Juin (10h00).")
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/atelier/verriere.jpg')
event4.cover.attach(io: file, filename: 'verriere.jpg', content_type: 'image/jpg')
# file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1588175369/atelier/article3.jpg')
# article1.cover.attach(io: file, filename: 'garde.jpg', content_type: 'image/jpg')
event4.save!
puts "event n°4 create"

event5 = Event.new(upcoming: false, title: 'Optimiser votre espace', description:"Aménager un jardin dans son appartement, un jeu d'enfant avec nos tutos. Rejoignez-nous à l'Atelier 28 le DImanche 12 Juin (10h00).")
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/atelier/verriere.jpg')
event5.cover.attach(io: file, filename: 'verriere.jpg', content_type: 'image/jpg')
# file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1588175369/atelier/article3.jpg')
# article1.cover.attach(io: file, filename: 'garde.jpg', content_type: 'image/jpg')
event5.save!
puts "event n°5 create"

event6 = Event.new(upcoming: false, title: 'Home Garden', description:"Aménager un jardin dans son appartement, un jeu d'enfant avec nos tutos. Rejoignez-nous à l'Atelier 28 le DImanche 12 Juin (10h00).")
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/atelier/verriere.jpg')
event6.cover.attach(io: file, filename: 'verriere.jpg', content_type: 'image/jpg')
# file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1588175369/atelier/article3.jpg')
# article1.cover.attach(io: file, filename: 'garde.jpg', content_type: 'image/jpg')
event6.save!
puts "event n°6 create"

puts 'seeds finished'
