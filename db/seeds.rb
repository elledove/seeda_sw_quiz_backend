# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Theme.destroy_all
Question.destroy_all
Answer.destroy_all

person = Theme.create(name: "person")
films = Theme.create(name: "films")
spaceships = Theme.create(name: "spaceships")
species = Theme.create(name: "species")
#vehicles = Theme.create(name: "vehicles")
planets = Theme.create(name: "planets")
#themes = Theme.create([{name: "person"}, {name: "films"}, {name: "spaceships"}, {name: "species"}, {name: "vehicles"}, {name: "planets"}])

q1 = Question.create(a_question: "What is Darth Vaders true indentity?", theme_id: person.id)
q2 = Question.create(a_question: "What is the first Star Wars movie to debut & what year?", theme_id: films.id)
q3 = Question.create(a_question: "What is is the name of Han Solos ship?", theme_id: spaceships.id) 
q4 = Question.create(a_question: "What species is Jabba Desilijic Tiure?", theme_id: species.id)
q5 = Question.create(a_question: "What planet was Anakin discovered on?", theme_id: planets.id)


Answer.create(an_answer: "Anakin",question: q1)
Answer.create(an_answer: "A New Hope, 1977",question_id: q2.id)
Answer.create(an_answer: "The Millenium Falcon",question_id: q3.id)
Answer.create(an_answer: "Huttanese",question_id: q4.id)
Answer.create(an_answer: "Tatooine",question_id: q5.id)