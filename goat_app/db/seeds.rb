# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Person.destroy_all
Goat.destroy_all

dane = Person.create(name:"Dane", age:"25")


Goat.create(name:"molly", age:"2", person_id: dane.id)
Goat.create(name:"doris", age:"3", person_id: dane.id)
 Goat.create(name:"boris", age:"2", person_id: dane.id)
 Goat.create(name:"toph", age:"3", person_id: dane.id)