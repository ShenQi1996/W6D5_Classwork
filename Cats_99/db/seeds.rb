# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all

c1 = Cat.create!(birth_date: "1909/06/19",
        color: "orange", 
        name: "picky",
        sex: "m",
        description: "I am picky, the old cat")

c2 = Cat.create!(birth_date: "2020/03/30",
    color: "black", 
    name: "baby",
    sex: "f",
    description: "I am baby, the baby cat")

c3 = Cat.create!(birth_date: "2012/04/22",
    color: "white", 
    name: "shenanigan",
    sex: "m",
    description: "don't worry about me, just a shenanigan")