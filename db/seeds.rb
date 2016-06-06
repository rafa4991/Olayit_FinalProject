# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#p1 = Product.create(name: "Bill Gates", price: 763000.00, description: "Bill Gate is rich. Good luck buying this guy.", image: "bill.jpg")

#p2 = Product.create(name: "Brisket", price: 3.59, description: "If you dont like brisket, we cannot be friends.", image: "brisket.jpg")

#p3 = Product.create(name: "Basketball Hoop", price: 19.99, description: "Every kid needs a hoop.", image: "hoop.jpg")

#p4 = Product.create(name: "Panda", price: 2000000.00, description: "Pandas are fucking awesome. If you can afford, pandas are well worth the price.", image: "panda.jpg")

#p5 = Product.create(name: "Jackie Chan", price: 130000000.00, description: 'Im surprised there is even a price for this guy. He is a gift to the world; should be listed as "priceless".', image: "jackie.jpg")


p6 = Product.create(name: "Imersify Mobile Telehealth Cart", 
					price: 6999.99, 
					description: "We designed this telehealth cart because our customers complained about how heavy, 
					awkward and difficult to move the carts they owned or tested were! We searched for months to find just 
					the right frame, wheels, medical grade display and accessories - and now are proud to introduce the Imersify 
					Telehealth Cart powered by one of our most favorite cameras, TelyCam 12x.    
					Enabling access to medical specialties, these healthcare stations come equipped with medically 
					certified all in one PC’s, and are manufactured in the US of the highest materials available. 
					Compact yet sturdy, the Imersify Cart is a cost effective all-in-one system that offers a powerful 
					TelyCam 12x (plus 4 other camera options if you like)." , 
					:image => open("app/assets/images/telycart.jpg") , 
					SKU: 5840486 ,
					manufacturer: "Imersify",
					height: 54,
					depth: 20,
					width: 20)

p7 = Product.create(name: "Avteq Telemedicine Mobile Medical Cart", 
					price: 2987.99, 
					description: "AVTEQ's TMP-800 is an electronically-adjustable tele-medicine flat screen cart 
					with 10RU storage cabinet and heavy-duty casters. It features:
					Easy accommodation for one flat panel screen up to 32.
					Integrated universal screen mounting system.
					4 heavy-duty 4 inch casters (2 with brakes).
					Integrated adjustable videoconferencing camera platform.
					10RU storage cabinet with standard 19 inc rack mount bracket.
					Slide-out drawer and optional keyboard tray (sold separately).
					Electronically adjustable screen height.
					Included 6-port medically-approved surge protector.
					Wire management features.
					100% solid steel construction.
					Durable powdercoat paint finish.
					Easy assembly, with all necessary hardware included.
					Footprint: 22.5 W x 19 D
					Rack: 16.5 D (8RU)
					Height to Deck: Adjusts 45-53 H
					Height to Camera Shelf: Adjusts 66-74 H
					Drawer Interior: 13.25 W x 11.5 D
					Keyboard Tray: 18.5 W x 8 D",
 					image: open("app/assets/images/imersifycart.jpg") , 
 					SKU: 1230586,
 					manufacturer: "Avteq",
					height: 72,
					depth: 24,
					width: 29)

p8 = Product.create(name: "Telehealth and Mobile Health", 
					price: 89.99, description: "The E-Medicine, E-Health, M-Health, Telemedicine, and Telehealth 
					Handbook provides extensive coverage of modern telecommunication in the medical industry, from 
					sensors on and within the body to electronic medical records and beyond.
					Telehealth and Mobile Health is the second volume of this handbook. Featuring chapters written 
					by leading experts and researchers in their respective fields, this volume:
					Discusses telesurgery, medical robotics, and image guidance as well as telenursing and remote patient care
					Describes the implementation of networks, data management, record management, and effective personnel training
					Explains how the use of new technologies brings many business, management, and service opportunities
					Provides examples of scientific advancements such as brain-controlled bionic human arms and hands
					Incorporates clinical applications throughout for practical reference
					The E-Medicine, E-Health, M-Health, Telemedicine, and Telehealth Handbook
					bridges the gap between scientists, engineers, and medical professionals by creating synergy 
					in the related fields of biomedical engineering, information and communication technology, 
					business, and healthcare.",  
					image: open("app/assets/images/telehealthbook.jpg") , 
					SKU: 3032936,
					#manufacturer: "CRC")
					)


p9 = Product.create(name: "Ergotron SV44-57T1-1 SV Telemedicine Cart", 
					price: 4699.00, description: "Expand healthcare access through telehealth with this easy 
					and affordable mobile solution, which combines the power to support onboard diagnostics and 
					videoconferencing with the benefits of a StyleView medical cart. Backed by our years of expertise 
					and service, you can confidently build a telemedicine platform that matches your needs and budget.
					Made in the USA by Ergotron.",  
					image: open("app/assets/images/ergotron.jpg") , 
					SKU: 1401404 ,
					#manufacturer: "Ergotron",
					height: 64,
					depth: 24,
					width: 26)

v1 = VendorOrganization.create(name: "Avteq", organizationID: 1, address: "123 S Someplace Ave")
v2 = VendorOrganization.create(name: "Video Conference Tech", organizationID: 2, address: "456 N Otherplace Str")
v3 = VendorOrganization.create(name: "CRC", organizationID: 4, address: "789 W Whatplace Rd")
v3 = VendorOrganization.create(name: "Imersify", organizationID: 5, address: "712 W Elsewhere Rd")
v3 = VendorOrganization.create(name: "Ergotron", organizationID: 6, address: "411 W NoWhere Rd")


