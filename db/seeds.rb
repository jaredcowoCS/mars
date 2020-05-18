# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Agency.destroy_all

a1 = Agency.create(name: "Agency 1", billing_terms: 30, credit_rating: "Poor")
a2 = Agency.create(name: "Agency 2", billing_terms: 15, credit_rating: "Good")
a3 = Agency.create(name: "Agency 3", billing_terms: 45, credit_rating: "Fair")

puts 'seeded'
