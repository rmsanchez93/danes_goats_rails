# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Person.destroy_all
Goat.destroy_all

dane = Person.create(name:"Dane", age:"30", img: "https://media.tenor.com/images/6d6334caf2d6d2910064d0c290ec442a/tenor.gif")

molly = Goat.create(name:"molly", age:2, img: "https://media.tenor.com/images/c35ff228dd375c1d92b2799a4d150f25/tenor.gif", person: dane)
toph = Goat.create(name:"toph", age:1, img: "https://i.makeagif.com/media/8-14-2014/LhoOJq.gif", person: dane)