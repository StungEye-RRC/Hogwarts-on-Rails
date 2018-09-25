# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.destroy_all # Delete all house and their associated students.

8.times do
  house = House.create(name: Faker::HarryPotter.unique.house,
                       points: Faker::Number.number(2))
  students_per_house = Faker::Number.number(2).to_i
  puts "Adding #{students_per_house} students to house #{house.name}."
  students_per_house.times do
    house.students.create(name: Faker::Name.name)
  end
end

puts "After seeding the database: "
puts "  - There are #{House.count} houses."
puts "  - There are #{Student.count} students."