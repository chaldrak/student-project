# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do 
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    birth_date = Faker::Date.between(from: '2003-01-01', to: '2017-12-31')
    sexe = Faker::Gender.binary_type
    matricule = Faker::Number.number(digits: 3)
    Student.create!(
        first_name: first_name,
        last_name: last_name,
        birth_date: birth_date,
        sexe: sexe,
        matricule: matricule
    )
end
