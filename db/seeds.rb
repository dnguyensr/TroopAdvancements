# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Add Users
adult_leader = User.create(first_name: "Bill", last_name: "Nye", adult_leader: true, parent: false, email: 'a@a.com', password: 'password')
parent = User.create(first_name: "Bob", last_name: "Hope", adult_leader: false, parent: true, email: 'b@b.com', password: 'password')
scout = User.create(first_name: "Adam", last_name: "Sandler", adult_leader: false, parent: false, email: 'boy@scout.com', password: 'password')
