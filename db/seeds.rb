# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!([
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


Category.create!([
  {
    title: 'Backend',
  },
  {
    title: 'Fronted'
  },
])

Test.create!([
  {
    title: 'Ruby', level: 2, category_id: Category.ids[0],
  },
  {
    title: 'HTML', category_id: Category.ids[1],
  }
])

Question.create([
  {
    body: 'В каком году был разработан Ruby?', test_id: Test.ids[0],
  },
  {
    body: 'Кто создал HTML?', test_id: Test.ids[1],
  }
])

Answer.create!([
  {
    body: '1990', correct: 'f', question_id: Question.ids[0],
  },
  {
    body: '1992', correct: 'f', question_id: Question.ids[0],
  },
  {
    body: '1991', correct: 't', question_id: Question.ids[0],
  },
  {
    body: 'Дима', correct: 'f', question_id: Question.ids[1],
  },
  {
    body: 'Влад', correct: 'f', question_id: Question.ids[1],
  },
  {
    body: 'Вася из Калиновки', correct: 't', question_id: Question.ids[1],
  },
])

Passing.create!([
  {
    user_id: 1, test_id: 1, creator_test: 't',
  },
  {
    user_id: 1, test_id: 1,
  },
  {
    user_id: 2, test_id: 2, creator_test: 't',
  },
])
