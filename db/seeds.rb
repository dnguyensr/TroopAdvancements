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

advancement = Advancement.create(user_id: scout.id)
scoutrank = Rank.create(rank: "Scout", description: "Scout", advancement_id: scout.advancement.id)
tenderfoot = Rank.create(rank: "Tenderfoot", description: "Tenderfoot", advancement_id: scout.advancement.id)
secondclass = Rank.create(rank: "Second Class", description: "Second Class", advancement_id: scout.advancement.id)
firstclass = Rank.create(rank: "First Class", description: "First Class", advancement_id: scout.advancement.id)
life = Rank.create(rank: "Star", description: "Star", advancement_id: scout.advancement.id)
star = Rank.create(rank: "Life", description: "Life", advancement_id: scout.advancement.id)
eagle = Rank.create(rank: "Eagle", description: "Eagle", advancement_id: scout.advancement.id)

t.integer :number
t.text :description
t.date :completed
t.integer :rank_id

scout1a = Requirement.create(number: 1, rank_id: scoutrank.id, description: "Repeat from memory the Scout Oath, Scout Law, Scout motto, and Scout slogan. In your own words, explain their meaning." )
