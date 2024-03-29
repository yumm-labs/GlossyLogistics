# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


ModeOfTransport.create([{name: 'AirLine'}, {name: 'Vessel'}])
Status.create([{name: 'Not Shipped'}, {name: 'Shipped'}, {name: 'Delivered'}, {name: 'Closed'}])
Product.create([{name: 'Product1', identifier: 'P1'}, {name: 'Product2', identifier: 'P2'}, {name: 'Product3', identifier: 'P3'}, {name: 'Product4', identifier: 'P4'}])