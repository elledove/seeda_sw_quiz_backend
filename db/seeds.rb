# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


person = Theme.create(name: "person")
films = Theme.create(name: "films")
spaceships = Theme.create(name: "spaceships")
species = Theme.create(name: "species")
#vehicles = Theme.create(name: "vehicles")
planets = Theme.create(name: "planets")
#themes = Theme.create([{name: "person"}, {name: "films"}, {name: "spaceships"}, {name: "species"}, {name: "vehicles"}, {name: "planets"}])

Question.create(a_question: "What is Darth Vaders true indentity?", theme_id: person.id)
Question.create(a_question: "What is the first Star Wars movie to debut & what year?", theme_id: films.id)
Question.create(a_question: "What is is the name of Han Solos ship?", theme_id: spaceships.id) 
Question.create(a_question: "What species is Jabba Desilijic Tiure?", theme_id: species.id)
Question.create(a_question: "What planet was Anakin discovered on?", theme_id: planets.id)


