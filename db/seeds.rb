# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.destroy_all # Delete all house and their associated students.

ravenclaw = House.create(name: 'Ravenclaw', points: 0)
wally = ravenclaw.students.create(name: 'Wally Glutton')

puts "After seeding the database: "
puts "  - There are #{House.count} houses."
puts "  - There are #{Student.count} students."