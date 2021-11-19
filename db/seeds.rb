# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  {
    name: 'Dima', surname: 'UA',
  },
  {
    name: 'Vlad', surname: 'UA',
  },
  {
    name: 'Igor', surname: 'RU',
  },
].each do |users|
  User.create!(users)
end
[
  {
    title: 'Backend',
  },
  {
    title: 'Fronted'
  },
].each do |categories|
  Category.create!(categories)
end

[
  {
    title: 'Ruby', level: 2, category_id: Category.ids[0],
  },
  {
    title: 'HTML', category_id: Category.ids[1],
  }
].each do |tests|
  Test.create!(tests)
end

[
  {
    body: 'В каком году был разработан Ruby?', test_id: Test.ids[0],
  },
  {
    body: 'Кто создал HTML?', test_id: Test.ids[1],
  }
].each do |questions|
  Question.create!(questions)
end

[
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
].each do |answers|
  Answer.create!(answers)
end

# Passing.create(user_id: 1, test_id: 1)
# Passing.create(user_id: 1, test_id: 3)
# Passing.create(user_id: 1, test_id: 4)
# Passing.create(user_id: 2, test_id: 2)
# Passing.create(user_id: 2, test_id: 5)
# Passing.create(user_id: 2, test_id: 6)

