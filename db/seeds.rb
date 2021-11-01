# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Answer.create(body: 'Yes', correct: 'f')
Answer.create(body: 'False', correct: 't')
Category.create(title: 'Backend')
Category.create(title: 'Fronted')
Question.create(body: 'Ruby создан в 1995?')
Question.create(body: 'HTML имеет ООП?')
Test.create(title: 'Ruby', level: 1)
Test.create(title: 'HTML')
