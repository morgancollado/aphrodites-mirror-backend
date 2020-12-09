# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.destroy_all
Makeup.destroy_all 

Makeup.create(product_name: "Powder Kiss Soft Matte Eye Shadow", product_type: "eye shadow" , skin_type: "Any", skin_tone: "Any", brand: "MAC",shade: "Rusty Brown")
Makeup.create(product_name: "Studio Fix Fluid", product_type: "liquid foundation", skin_type: "Oily" , skin_tone: "Deep Dark" , brand: "MAC" ,shade: "NW58")
Makeup.create(product_name: "Studio Fix Fluid", product_type: "liquid foundation", skin_type: "Oily" , skin_tone: "Medium" , brand: "MAC" ,shade: "C5")
Makeup.create(product_name: "Studio Fix Fluid", product_type: "liquid foundation", skin_type: "Oily" , skin_tone: "Light" , brand: "MAC" ,shade: "NC17")
Makeup.create(product_name: "Studio Fix Powder", product_type: "powder foundation", skin_type: "Dry" , skin_tone: "Deep Dark" , brand: "MAC" ,shade: "NW58")
Makeup.create(product_name: "Studio Fix Powder", product_type: "powder foundation", skin_type: "Dry" , skin_tone: "Light" , brand: "MAC" ,shade: "NC17")
Makeup.create(product_name: "Studio Fix Powder", product_type: "powder foundation", skin_type: "Dry" , skin_tone: "Medium" , brand: "MAC" ,shade: "C5")


7.times do 
    Review.create(comment: Faker::Marketing.buzzwords, stars: Faker::Number.within(range: 1..5), makeup_id: Makeup.all.sample.id)
end 
