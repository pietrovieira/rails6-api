# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'User02', username: 'user02', email: 'example@email.com', password: '123mudar', password_confirmation: '123mudar' )
Person.create(User: 1, name: 'Pietro Vieira', indentifyId: '35531490802', birthday: '1989-03-13', isActive: true, street: 'Rua X', num: 1, Neighborhood: 1, City: 1, uf: 'SP' )