# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Person.destroy_all
Goat.destroy_all

dane = Person.create(name:"Dane", age:"30")
duncan = Person.create(name:"Duncan", age:"21")

molly = Goat.create(name:"molly", age:2, person: dane)
toph = Goat.create(name:"toph", age:1, person: dane)