# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create!([
  {
    name: 'Dima', surname: 'UA',
  },
  {
    name: 'Vlad', surname: 'UA',
  },
  {
    name: 'Igor', surname: 'RU',
  },
])


categories = Category.create!([
  {
    title: 'Backend',
  },
  {
    title: 'Fronted',
  },
])

tests = Test.create!([
  {
    title: 'Ruby', level: 2, category: categories[0], author: users[0],
  },
  {
    title: 'HTML', category: categories[1], author: users[1],
  },
])

questions = Question.create([
  {
    body: 'В каком году был разработан Ruby?', test: tests[0],
  },
  {
    body: 'Кто создал HTML?', test: tests[1],
  },
])

Answer.create!([
  {
    body: '1990', question: questions[0],
  },
  {
    body: '1992', question: questions[0],
  },
  {
    body: '1991', correct: 'true', question: questions[0],
  },
  {
    body: 'Дима', question: questions[1],
  },
  {
    body: 'Влад', question: questions[1],
  },
  {
    body: 'Вася из Калиновки', correct: 'true', question: questions[1],
  },
])

Passing.create!([
  {
    user: users[0], test: tests[0],
  },
  {
    user: users[1], test: tests[0],
  },
  {
    user: users[2], test: tests[1],
  },
])
