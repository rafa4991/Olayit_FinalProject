# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p1 = Product.create(name: "Bill Gates", price: 763000.00, description: "Bill Gate is rich. Good luck buying this guy.", image: "bill.jpg")

#p2 = Product.create(name: "Brisket", price: 3.59, description: "If you dont like brisket, we cannot be friends.", image: "brisket.jpg")

p3 = Product.create(name: "Basketball Hoop", price: 19.99, description: "Every kid needs a hoop.", image: "hoop.jpg")

#p4 = Product.create(name: "Panda", price: 2000000.00, description: "Pandas are fucking awesome. If you can afford, pandas are well worth the price.", image: "panda.jpg")

p5 = Product.create(name: "Jackie Chan", price: 130000000.00, description: 'Im surprised there is even a price for this guy. He is a gift to the world; should be listed as "priceless".', image: "jackie.jpg")

p6 = Product.create(name: "Imersify Mobile Telehealth Cart", price: 6999.00, description: "We designed this telehealth cart because our customers complained about how heavy, awkward and difficult to move the carts they owned or tested were! We searched for months to find just the right frame, wheels, medical grade display and accessories - and now are proud to introduce the Imersify Telehealth Cart powered by one of our most favorite cameras, TelyCam 12x.    

Enabling access to medical specialties, these healthcare stations come equipped with medically certified all in one PC’s, and are manufactured in the US of the highest materials available. Compact yet sturdy, the Imersify Cart is a cost effective all-in-one system that offers a powerful TelyCam 12x (plus 4 other camera options if you like)." , image: "telycart.jpg" , SKU: 5840486)

