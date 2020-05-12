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
puts 'Mobilier...'
product1 = Product.create({:category=>'mobilier', :name=>'Chaise « Peau de vache»', :brand=>"Simla", :description=>"Chaise en bois et sangles en cuir cognac, Dimensions 65 / 75 cm Hauteur 80 cm", :sku=>"00001", price_cents: 39000})
file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589218292/mobilier/Chaise_peau_de_vache_1_tq16ne.png')
product1.photo.attach(io: file, filename: 'Chaise_peau_de_vache_1_tq16ne.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589218286/mobilier/Chaise_peau_de_vache_2_dtivph.png')
product1.cover.attach(io: file, filename: 'Chaise_peau_de_vache_2_dtivph.png', content_type: 'image/png')
product1.save!
puts 'number 1 finished'
product2 = Product.create({:category=>'mobilier', :name=>"Coussin de sol « Smiling »", :brand=>"Simla", :description=>"Coussin de sol écru et noir en coton, dimensions 80 / 60 cm", :sku=>"00002", price_cents: 10000})
file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589274014/mobilier/9_xlsrdk.jpg')
product2.photo.attach(io: file, filename: '9_xlsrdk.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589274013/mobilier/10_mclkpz.jpg')
product2.cover.attach(io: file, filename: '10_mclkpz.jpg', content_type: 'image/jpg')
product2.save!
puts 'number 2 finished'
product3 = Product.create({:category=>'mobilier', :name=>"Etagère murale « bambou »", :brand=>"MadamStoltz", :description=>"Etagère murale en bambou et rotin couleur naturelle, diamètre 60 cm", :sku=>"00003", price_cents: 12500})
file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589274012/mobilier/15_ggbzyn.jpg')
product3.photo.attach(io: file, filename: '15_ggbzyn.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589218275/mobilier/Etagere_bambou_2_ltsuwp.jpg')
product3.cover.attach(io: file, filename: 'Etagere_bambou_2_ltsuwp.jpg', content_type: 'image/jpg')
product3.save!
puts 'number 3 finished'
product4 = Product.create({:category=>'mobilier', :name=>"Etagère murale Quandratic", :brand=>"MadamStoltz", :description=>"Etagère murale en fer couleur laiton antik, dimensions 61 / 15 / 61 cm", :sku=>"00004", price_cents: 9800})
file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589218285/mobilier/Etagere_murale_fer_gold_2_fgd8ly.png')
product4.photo.attach(io: file, filename: 'Etagere_murale_fer_gold_2_fgd8ly.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589218288/mobilier/Etagere_murale_fer_gold_1_pzxcoi.jpg')
product4.cover.attach(io: file, filename: 'Etagere_murale_fer_gold_1_pzxcoi.jpg', content_type: 'image/jpg')
product4.save!
puts 'number 4 finished'
# product5 = Product.create({:category=>'mobilier', :name=>"Matelas nomade", :brand=>"MadamStoltz", :description=>"Matelas nomade en coton et franges, dimensions 70 / 180 cm. Existe en couleurs: Beige ou marsala ", :sku=>"00005", price_cents: 8700})
# file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589218294/mobilier/Tabouret_peau_de_vache_2_tsp8ys.jpg')
# product5.photo.attach(io: file, filename: 'planche_1.jpg', content_type: 'image/jpg')
# file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589218294/mobilier/Tabouret_peau_de_vache_2_tsp8ys.jpg')
# product5.cover.attach(io: file, filename: 'planche_2.jpg', content_type: 'image/jpg')
# puts 'number 5 finished'
# product6 = Product.create({:category=>'mobilier', :name=>"Miroir rond naturel", :brand=>"MadamStoltz", :description=>"Miroir rond macramé et franges, couleur naturel, diamètre 52 cm", :sku=>"00006", price_cents: 9600})
# file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589218294/mobilier/Tabouret_peau_de_vache_2_tsp8ys.jpg')
# product6.photo.attach(io: file, filename: 'planche_1.jpg', content_type: 'image/jpg')
# file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589218294/mobilier/Tabouret_peau_de_vache_2_tsp8ys.jpg')
# product6.cover.attach(io: file, filename: 'planche_2.jpg', content_type: 'image/jpg')
# puts 'number 6 finished'
# product7 = Product.create({:category=>'mobilier', :name=>"Miroir oeil rotin", :brand=>"Simla", :description=>"Miroir en forme d'oeil en rotin naturel, dimensions 65 / 45 cm", :sku=>"00007", price_cents: 6100})
# file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589218294/mobilier/Tabouret_peau_de_vache_2_tsp8ys.jpg')
# product7.photo.attach(io: file, filename: 'planche_1.jpg', content_type: 'image/jpg')
# file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589218294/mobilier/Tabouret_peau_de_vache_2_tsp8ys.jpg')
# product7.cover.attach(io: file, filename: 'planche_2.jpg', content_type: 'image/jpg')
# puts 'number 7 finished'
# product8 = Product.create({:category=>'mobilier', :name=>"Miroir rond noir", :brand=>"Simla", :description=>"Miroir rond cerclage en aluminum et verre biseauté, couleur noir, diamètre 45 cm", :sku=>"00008", price_cents: 4500})
# file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589218294/mobilier/Tabouret_peau_de_vache_2_tsp8ys.jpg')
# product8.photo.attach(io: file, filename: 'planche_1.jpg', content_type: 'image/jpg')
# file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589218294/mobilier/Tabouret_peau_de_vache_2_tsp8ys.jpg')
# product8.cover.attach(io: file, filename: 'planche_2.jpg', content_type: 'image/jpg')
# puts 'number 8 finished'
# product30 = Product.create({:category=>'mobilier', :name=>"Miroir rond noir", :brand=>"Simla", :description=>"Miroir rond cerclage en aluminum et verre biseauté, couleur noir, diamètre 60 cm", :sku=>"000030", price_cents: 8600})
# file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589218294/mobilier/Tabouret_peau_de_vache_2_tsp8ys.jpg')
# product30.photo.attach(io: file, filename: 'planche_1.jpg', content_type: 'image/jpg')
# file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589218294/mobilier/Tabouret_peau_de_vache_2_tsp8ys.jpg')
# product30.cover.attach(io: file, filename: 'planche_2.jpg', content_type: 'image/jpg')
# puts 'number 30 finished'
# product9 = Product.create({:category=>'mobilier', :name=>"Pouf Bicolore", :brand=>"MadamStoltz", :description=>"Pouf interieur et exterieur en coton et rembourrage en polystyrène, dimensions 150 / 80 / 45 cm. En complément Prix coussin, dimensions 65/65 cm  à 62 €", :sku=>"00009", price_cents: 29000})
# file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589218294/mobilier/Tabouret_peau_de_vache_2_tsp8ys.jpg')
# product9.photo.attach(io: file, filename: 'planche_1.jpg', content_type: 'image/jpg')
# file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589218294/mobilier/Tabouret_peau_de_vache_2_tsp8ys.jpg')
# product9.cover.attach(io: file, filename: 'planche_2.jpg', content_type: 'image/jpg')
# puts 'number 9 finished'
# product10 = Product.create({:category=>'mobilier', :name=>"Table basse ronde", :brand=>"Simla", :description=>"Table basse en bois Mindi, couleur noir, dimensions hauteur 24 cm diamètre 50 cm", :sku=>"00010", price_cents: 20000})
# file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589218294/mobilier/Tabouret_peau_de_vache_2_tsp8ys.jpg')
# product10.photo.attach(io: file, filename: 'planche_1.jpg', content_type: 'image/jpg')
# file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589218294/mobilier/Tabouret_peau_de_vache_2_tsp8ys.jpg')
# product10.cover.attach(io: file, filename: 'planche_2.jpg', content_type: 'image/jpg')
# puts 'number 10 finished'
# product31 = Product.create({:category=>'mobilier', :name=>"Table basse ronde", :brand=>"Simla", :description=>"Table basse en bois Mindi, couleur noir, dimensions hauteur 30 cm diamètre 70 cm", :sku=>"00031", price_cents: 28000})
# file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589218294/mobilier/Tabouret_peau_de_vache_2_tsp8ys.jpg')
# product31.photo.attach(io: file, filename: 'planche_1.jpg', content_type: 'image/jpg')
# file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589218294/mobilier/Tabouret_peau_de_vache_2_tsp8ys.jpg')
# product31.cover.attach(io: file, filename: 'planche_2.jpg', content_type: 'image/jpg')
# puts 'number 31 finished'
# product11 = Product.create({:category=>'mobilier', :name=>"Banc « Peau de vache »", :brand=>"Simla", :description=>"Banc en bois et sangles en cuir cognac, dimensions 62 / 33 cm hauteur 42 cm", :sku=>"00011", price_cents: 24800})
# file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589218294/mobilier/Tabouret_peau_de_vache_2_tsp8ys.jpg')
# product11.photo.attach(io: file, filename: 'planche_1.jpg', content_type: 'image/jpg')
# file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589218294/mobilier/Tabouret_peau_de_vache_2_tsp8ys.jpg')
# product11.cover.attach(io: file, filename: 'planche_2.jpg', content_type: 'image/jpg')
# puts 'number 11 finished'
# product12 = Product.create({:category=>'mobilier', :name=>"Tabouret racine de teck", :brand=>"Simla", :description=>"Tabouret en racine de teck couleur bois naturel, hauteur 47 cm", :sku=>"00012", price_cents: 12800})
# file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589218294/mobilier/Tabouret_peau_de_vache_2_tsp8ys.jpg')
# product12.photo.attach(io: file, filename: 'planche_1.jpg', content_type: 'image/jpg')
# file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589218294/mobilier/Tabouret_peau_de_vache_2_tsp8ys.jpg')
# product12.cover.attach(io: file, filename: 'planche_2.jpg', content_type: 'image/jpg')
# puts 'number 12 finished'
# product13 = Product.create({:category=>'mobilier', :name=>"Table d'appoint", :brand=>"HK living", :description=>"table d’appoint, bout de canapé en terrazzo, hauteur 44 cm diamètre 35 cm", :sku=>"00013", price_cents: 2000})
# file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589218294/mobilier/Tabouret_peau_de_vache_2_tsp8ys.jpg')
# product13.photo.attach(io: file, filename: 'planche_1.jpg', content_type: 'image/jpg')
# file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589218294/mobilier/Tabouret_peau_de_vache_2_tsp8ys.jpg')
# product13.cover.attach(io: file, filename: 'planche_2.jpg', content_type: 'image/jpg')
# puts 'number 13 finished'

# puts 'Art de la table...'

# product14 = Product.create({:category=>'art_de_la_table', :name=>"Assiette dessert année 70’", :brand=>"année 70’", :description=>"Céramique diamètre 22 cm", :sku=>"00014", price_cents: 100})
# product15 = Product.create({:category=>'art_de_la_table', :name=>"Assiette dîner année 70’", :brand=>"année 70’", :description=>"Céramique diamètre 29 cm", :sku=>"00015", price_cents: 100})
# product16 = Product.create({:category=>'art_de_la_table', :name=>"Set de 4 bols année 70’", :brand=>"année 70’", :description=>"Céramique dépareillée diamètre 11 cm", :sku=>"00016", price_cents: 100})
# product17 = Product.create({:category=>'art_de_la_table', :name=>"Plat service année 70’", :brand=>"année 70’", :description=>"Céramique diamètre 27 cm", :sku=>"00017", price_cents: 100})
# product18 = Product.create({:category=>'art_de_la_table', :name=>"Assiette dessert Collection Palmier", :brand=>"Collection Palmier", :description=>"Porcelaine diamètre 22 cm", :sku=>"00018", price_cents: 100})
# product19 = Product.create({:category=>'art_de_la_table', :name=>"Assiette dîner Collection Palmier", :brand=>"Collection Palmier", :description=>"Porcelaine diamètre 27 cm", :sku=>"00019", price_cents: 100})
# product20 = Product.create({:category=>'art_de_la_table', :name=>"Bol service Collection Palmier", :brand=>"Collection Palmier", :description=>"Porcelaine diamètre 14,5 cm", :sku=>"00020", price_cents: 100})
# product21 = Product.create({:category=>'art_de_la_table', :name=>"Plat service Collection Palmier", :brand=>"Collection Palmier", :description=>"Porcelaine dimension 25/13 cm", :sku=>"00021", price_cents: 100})
# product22 = Product.create({:category=>'art_de_la_table', :name=>"Assiette à Pizza Bel Paese", :brand=>"Bitossi", :description=>"porcelaine diamètre 32 cm", :sku=>"00022", price_cents: 100})
# product23 = Product.create({:category=>'art_de_la_table', :name=>"Assiette apéritif / dessert Bel Paese", :brand=>"Bitossi", :description=>"porcelaine diamètre 17 cm", :sku=>"00023", price_cents: 100})
# product24 = Product.create({:category=>'art_de_la_table', :name=>"Coupe verre bleue Bel Paese", :brand=>"Bitossi", :description=>"porcelaine diamètre 8/15 cm", :sku=>"00024", price_cents: 100})
# product25 = Product.create({:category=>'art_de_la_table', :name=>"Planche en bois taille M", :brand=>"Les planches", :description=>"bois teck diamètre 37,5 cm", :sku=>"00025", price_cents: 100})
# product26 = Product.create({:category=>'art_de_la_table', :name=>"Planche en bois taille L", :brand=>"Les planches", :description=>"bois teck diamètre 58,5 cm", :sku=>"00026", price_cents: 100})
# product27 = Product.create({:category=>'art_de_la_table', :name=>"Planche trio", :brand=>"Les planches", :description=>"bois teck et cuir dimensions 31x16x1,2cm/ 38x15x1,2cm/ 47x12x1,2cm", :sku=>"00027", price_cents: 100})
# product28 = Product.create({:category=>'art_de_la_table', :name=>"Set théière et tasses", :brand=>"Les planches", :description=>"céramique théière et deux tasses", :sku=>"00028", price_cents: 100})
# product29 = Product.create({:category=>'art_de_la_table', :name=>"Set petit dej’", :brand=>"Les planches", :description=>"Plateau et bol céramique", :sku=>"00029", price_cents: 100})

# puts "next category"
# product32 = Product.create({:category=>'art_de_la_table', :name=>"", :brand=>"", :description=>"", :sku=>"00032", price_cents: 100})
puts "Total number of products: #{Product.all.count}"

puts '...'

puts 'Events'
puts 'Destroying old Events'
puts '----------------'
Event.destroy_all
puts 'Creating Events'
puts '----------------'
event1 = Event.new(upcoming: true, title: 'Home Garden', description:"Aménager un jardin dans son appartement, un jeu d'enfant avec nos tutos. Rejoignez-nous à l'Atelier 28 le Dimanche 12 Juin (10h00).")
file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589274589/workshop_lvwln1.jpg')
event1.cover.attach(io: file, filename: 'workshop_lvwln1.jpg', content_type: 'image/jpg')
event1.save!
puts "event n°1 create"

event2 = Event.new(upcoming: true, title: 'Mode 2020', description:"Aménager un jardin dans son appartement, un jeu d'enfant avec nos tutos. Rejoignez-nous à l'Atelier 28 le Dimanche 12 Juin (10h00).")
file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589274584/atelier-table_poy9vr.jpg')
event2.cover.attach(io: file, filename: 'atelier-table_poy9vr.jpg', content_type: 'image/jpg')
event2.save!
puts "event n°2 create"
event3 = Event.new(upcoming: true, title: 'Apéro & Déco', description:"Découvrer notre nouvelle collection autour d'un verre à l'Atelier 28 le Vendredi 10 Juin (19h00).")
file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589274589/workshop_lvwln1.jpg')
event3.cover.attach(io: file, filename: 'workshop_lvwln1.jpg', content_type: 'image/jpg')
event3.save!
puts "event n°3 create"

event4 = Event.new(upcoming: false, title: 'Home Garden', description:"Aménager un jardin dans son appartement, un jeu d'enfant avec nos tutos. Rejoignez-nous à l'Atelier 28 le Dimanche 12 Juin (10h00).")
file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589274584/atelier-table_poy9vr.jpg')
event4.cover.attach(io: file, filename: 'atelier-table_poy9vr.jpg', content_type: 'image/jpg')
event4.save!
puts "event n°4 create"

event5 = Event.new(upcoming: false, title: 'Optimiser votre espace', description:"Aménager un jardin dans son appartement, un jeu d'enfant avec nos tutos. Rejoignez-nous à l'Atelier 28 le Dimanche 12 Juin (10h00).")
file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589274589/workshop_lvwln1.jpg')
event5.cover.attach(io: file, filename: 'workshop_lvwln1.jpg', content_type: 'image/jpg')
event5.save!
puts "event n°5 create"

event6 = Event.new(upcoming: false, title: 'Home Garden', description:"Aménager un jardin dans son appartement, un jeu d'enfant avec nos tutos. Rejoignez-nous à l'Atelier 28 le Dimanche 12 Juin (10h00).")
file = URI.open('https://res.cloudinary.com/samedi28/image/upload/v1589274584/atelier-table_poy9vr.jpg')
event6.cover.attach(io: file, filename: 'atelier-table_poy9vr.jpg', content_type: 'image/jpg')
event6.save!
puts "event n°6 create"

puts 'seeds finished'
