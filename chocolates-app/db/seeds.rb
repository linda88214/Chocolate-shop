# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


cust1 = Customer.create!(name: "Linda", age: 30, gender: "female")
cust2 = Customer.create!(name: "Ellen", age: 29, gender: "female")
cust3 = Customer.create!(name: "Hoya", age: 32, gender: "male")


Chocolate.create!([
	{name: "Oreo", flavor: "Dark Chocolate", price: 1.00, customer_id: 1},
	{name: "White", flavor: "White Chocolate", price: 3.00, customer_id: 2},
	{name: "BanCho", flavor: "Banana Chocolate", price: 5.00, customer_id: 3}
])