# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Appointment.destroy_all
House.destroy_all # Delete all houses and their associated students and teachers.

8.times do
  house = House.create(name: Faker::HarryPotter.unique.house,
                       points: Faker::Number.number(2))

  students_per_house = Faker::Number.number(2).to_i
  puts "Adding #{students_per_house} students to house #{house.name}."
  students_per_house.times do
    house.students.create(name: Faker::Name.unique.name)
  end

  2.times do
    Teacher.create(name: Faker::Name.unique.name, house: house)
  end
end

10.times do
  student = Student.all.sample
  teacher = Teacher.all.sample
  days_in_the_future = Faker::Number.number(2).to_i
  date = Faker::Time.forward(days_in_the_future, :morning)
  Appointment.create(student: student,
                     teacher: teacher,
                     meeting_time: date)
end

puts "After seeding the database: "
puts "  - There are #{House.count} houses."
puts "  - There are #{Student.count} students."
puts "  - There are #{Teacher.count} teachers."
puts "  - There are #{Appointment.count} appointments."

AdminUser.create!(email: 'admin@example.com', password: 'password!', password_confirmation: 'password!') if Rails.env.development?