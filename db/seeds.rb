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

def create_scout
    @scout = User.create(first_name: "Adam", last_name: "Sandler", adult_leader: false, parent: false, email: 'boy@scout.com', password: 'password')
    create_advancements
end

def create_advancements
    @advancement = Advancement.create(user_id: @scout.id)
    create_rank_scout
end
# tenderfoot = Rank.create(rank: "Tenderfoot", description: "Tenderfoot", advancement_id: scout.advancement.id)
# secondclass = Rank.create(rank: "Second Class", description: "Second Class", advancement_id: scout.advancement.id)
# firstclass = Rank.create(rank: "First Class", description: "First Class", advancement_id: scout.advancement.id)
# life = Rank.create(rank: "Star", description: "Star", advancement_id: scout.advancement.id)
# star = Rank.create(rank: "Life", description: "Life", advancement_id: scout.advancement.id)
# eagle = Rank.create(rank: "Eagle", description: "Eagle", advancement_id: scout.advancement.id)



def create_rank_scout
  scoutrank = Rank.create(rank: "Scout", description: "Scout", advancement_id: @advancement.id)
  scout_requirements = [
    {number: 1, rank_id: scoutrank.id, part:"a", description: "Repeat from memory the Scout Oath, Scout Law, Scout motto, and Scout slogan. In your own words, explain their meaning."},
    {number: 1, rank_id: scoutrank.id, part:"b", description: "Explain what Scout spirit is. Describe some ways you have shown Scout spirit by practicing the Scout Oath, Scout Law, Scout motto, and Scout slogan."},
    {number: 1, rank_id: scoutrank.id, part:"c", description: "Demonstrate the Boy Scout sign, salute, and handshake. Explain when they should be used."},
    {number: 1, rank_id: scoutrank.id, part:"d", description: "Describe the First Class Scout badge and tell what each part stands for. Explain the significance of the First Class Scout badge."},
    {number: 1, rank_id: scoutrank.id, part:"e", description: "Repeat from memory the Outdoor Code. In your own words, explain what the Outdoor Code means to you."},
    {number: 1, rank_id: scoutrank.id, part:"f", description: "Repeat from memory the Pledge of Allegiance. In your own words, explain its meaning."},
    {number: 2, rank_id: scoutrank.id, description: "After attending at least one Boy Scout troop meeting, do the following:"},
    {number: 2, rank_id: scoutrank.id, part:"a", description: "Describe how the Scouts in the troop provide its leadership."},
    {number: 2, rank_id: scoutrank.id, part:"b", description: "Describe the four steps of Boy Scout advancement."},
    {number: 2, rank_id: scoutrank.id, part:"c", description: "Describe what the Boy Scout ranks are and how they are earned."},
    {number: 2, rank_id: scoutrank.id, part:"d", description: "Describe what merit badges are and how they are earned."},
    {number: 3, rank_id: scoutrank.id, part:"a", description: "Explain the patrol method. Describe the types of patrols that are used in your troop."},
    {number: 3, rank_id: scoutrank.id, part:"b", description: "Become familiar with your patrol name, emblem, flag, and yell. Explain how these items create patrol spirit."},
    {number: 4, rank_id: scoutrank.id, part:"a", description: "Show how to tie a square knot, two half-hitches, and a taut-line hitch. Explain how each knot is used."},
    {number: 4, rank_id: scoutrank.id, part:"b", description: "Show the proper care of a rope by learning how to whip and fuse the ends of different kinds of rope."},
    {number: 5, rank_id: scoutrank.id, description: "Demonstrate your knowledge of pocketknife safety."},
    {number: 6, rank_id: scoutrank.id, description: "With your parent or guardian, complete the exercises in the pamphlet How to Protect Your Children From Child Abuse: A Parent’s Guide and earn the Cyber Chip Award for your grade."},
    {number: 7, rank_id: scoutrank.id, description: "Since joining the troop and while working on the Scout rank, participate in a Scoutmaster conference."}
]
  scout_requirements.each do |requirement|
    Requirement.create(requirement)
  end
end

create_scout
