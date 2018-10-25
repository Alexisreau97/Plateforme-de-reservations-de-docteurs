# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all

10.times do
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: Faker::Job.field, postal_code: Faker::Address.postcode)
  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  appointement = Appointement.create!(date: Faker::Time.between(DateTime.now - 1, DateTime.now))
end
