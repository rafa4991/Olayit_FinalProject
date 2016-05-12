# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p1 = Product.create(name: "Bill Gates", price: 76300000000.00, description: "Bill Gate is fucking rich. Good luck buying this guy.", image: "bill.jpg")

p2 = Product.create(name: "Brisket", price: 3.59, description: "If you dont like brisket, we cannot be friends.", image: "brisket.jpg")

p3 = Product.create(name: "Basketball Hoop", price: 19.99, description: "Every kid needs a hoop.", image: "hoop.jpg")

p4 = Product.create(name: "Panda", price: 2000000.00, description: "Pandas are fucking awesome. If you can afford, pandas are well worth the price.", image: "panda.jpg")

p5 = Product.create(name: "Jackie Chan", price: 130000000.00, description: 'Im surprised there is even a price for this guy. He is a gift to the world; should be listed as "priceless".', image: "jackie.jpg")