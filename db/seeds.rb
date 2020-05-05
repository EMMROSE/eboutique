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
product1 = Product.create({:name=>"Dolce Vita", :description=>"L'art de la table from Roma", :sku=>"123456", price_cents: 320})
product2 = Product.create({:name=>"Lucky Plate", :description=>"Jeux d'assiettes Lucky", :sku=>"123457",price_cents: 320})
product3 = Product.create({:name=>"Serviette", :description=>"Draps de bain en coton", :sku=>"123458",price_cents: 350})
product4 = Product.create({:name=>"Verres", :description=>"Lot de 6 verres à moutarde", :sku=>"123459",price_cents: 320})
product5 = Product.create({:name=>"Luminaire", :description=>"Luminaire de la marque SAMODE", :sku=>"123450",price_cents: 42000})
puts "Total number of products: #{Product.all.count}"
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/samedi28/IMG_7586_w3az6u.jpg')
product1.photo.attach(io: file, filename: 'IMG_7586_w3az6u.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/samedi28/FQHB6877_kvhduv.jpg')
product1.cover.attach(io: file, filename: 'FQHB6877_kvhduv.jpg', content_type: 'image/jpg')
puts 'number 1 finished'
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/samedi28/IMG_7700_s4p5ei.jpg')
product2.photo.attach(io: file, filename: 'IMG_7700_s4p5ei.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/samedi28/IMG_7844_xyplxx.jpg')
product2.cover.attach(io: file, filename: 'IMG_7844_xyplxx.jpg', content_type: 'image/jpg')
puts 'number 2 finished'
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/samedi28/DOQN8372_koyf93.jpg')
product3.photo.attach(io: file, filename: 'DOQN8372_koyf93.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/samedi28/BCXJ9342_mdxils.jpg')
product3.cover.attach(io: file, filename: 'BCXJ9342_mdxils.jpg', content_type: 'image/jpg')
puts 'number 3 finished'
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/samedi28/IMG_7308_irtxd7.jpg')
product4.photo.attach(io: file, filename: 'IMG_7308_irtxd7.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/samedi28/FQHB6877_kvhduv.jpg')
product4.cover.attach(io: file, filename: 'FQHB6877_kvhduv.jpg', content_type: 'image/jpg')
puts 'number 4 finished'
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/samedi28/BCXJ9342_mdxils.jpg')
product5.photo.attach(io: file, filename: 'BCXJ9342_mdxils.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/samedi28/IGAJ0357_eazdcx.jpg')
product5.cover.attach(io: file, filename: 'IGAJ0357_eazdcx.jpg', content_type: 'image/jpg')
puts 'number 5 finished'
puts '...'

puts 'Creating articles'
puts '----------------'

event1 = Event.new(upcoming: true, title: 'Home Garden', description:"Aménager un jardin dans son appartement, un jeu d'enfant avec nos tutos. Rejoignez-nous à l'Atelier 28 le DImanche 12 Juin (10h00).")
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/atelier/verriere.jpg')
event1.cover.attach(io: file, filename: 'verriere.jpg', content_type: 'image/jpg')
# file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1588175369/atelier/article3.jpg')
# article1.cover.attach(io: file, filename: 'garde.jpg', content_type: 'image/jpg')
event1.save!
puts "event n°1 create"

event2 = Event.new(upcoming: true, title: 'Home Garden', description:"Aménager un jardin dans son appartement, un jeu d'enfant avec nos tutos. Rejoignez-nous à l'Atelier 28 le DImanche 12 Juin (10h00).")
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

event5 = Event.new(upcoming: false, title: 'Home Garden', description:"Aménager un jardin dans son appartement, un jeu d'enfant avec nos tutos. Rejoignez-nous à l'Atelier 28 le DImanche 12 Juin (10h00).")
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
