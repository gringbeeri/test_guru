# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# {
#   Backend: [
#     { title: 'Ruby',
#       level: 2,
#       name: 'Dima',
#       surname: 'UA',
#       email: 'dmitro@gmail.com',
#       questions: {
#         body: 'В каком году был разработан Ruby?',
#         answers: {
#           '1990' => true,
#           '1992' => false,
#           '1991' => true,
#         },
#         body: 'Кто создал язык Ruby?',
#         answers: {
#           'Юкихиро Мацумото' => true,
#           'Гвидо Ван Россум' => false,
#           'Бьёрн Страуструп' => true,
#         }
#       }
#     },
#     { title: 'C++',
#       level: 3,
#       name: 'Vlad',
#       surname: 'UA',
#       email: 'vladislav@gmail.com',
#       questions: {
#         body: 'Кто создал данный язык?',
#         answers: {
#           'Дима' => false,
#           'Влад' => false,
#           'Вася из Калиновки' => true
#         }
#       }
#     }
#   ],
#   Frontend: [
#     { title: 'HTML',
#       level: 0,
#       name: 'Igor',
#       surname: 'RU',
#       email: 'igor@gmail.com',
#       questions:{
#         body: 'Кто создатель языка?',
#         answers: {
#           'Дима' => false,
#           'Влад' => false,
#           'Петя из Джанкоя' => true
#         }
#       }
#     }
#   ]
# }.each do |categories, all_tests|
#   category = Category.create!(title: categories)
#   all_tests.each do |tests|
#     user = User.create!(name: tests[:name], surname: tests[:surname], email: tests[:email])
#     test = category.tests.create!(title: tests[:title], level: tests[:level], author: user)
#     question = test.questions.create!(body: tests[:questions][:body])
#     tests[:questions][:answers].each do |answer, correct|
#       question.answers.create!(body: answer, correct: correct)
#     end
#   end
# end

users = User.create!([
  {
    name: 'Dima', email: 'link@',
  },
  {
    name: 'Vlad', email: 'nolink@',
  },
  {
    name: 'Igor', email: 'yeslink@',
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
    body: 'Кто создал Ruby?', test: tests[0],
  },
  {
    body: 'В каком году Ruby был доступен на английском?', test: tests[0],
  },
  {
    body: 'В какой сфере применяется язык Ruby?', test: tests[0],
  },
  {
    body: 'Какой основной фреймворк Ruby?', test: tests[0],
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
    body: '1991', correct: true, question: questions[0],
  },
  {
    body: 'Юкихиро Мацумото', correct: true, question: questions[1],
  },
  {
    body: 'Гвидо Ван Россум', question: questions[1],
  },
  {
    body: 'Бьёрн Страуструп', question: questions[1],
  },
  {
    body: '1989', question: questions[2],
  },
  {
    body: '2005', question: questions[2],
  },
  {
    body: '1997', correct: true, question: questions[2],
  },
  {
    body: 'Создание игр', question: questions[3],
  },
  {
    body: 'WEB-разработка', correct: true, question: questions[3],
  },
  {
    body: 'Обработка данных', question: questions[3],
  },
  {
    body: 'Ruby on Rails', correct: true, question: questions[4],
  },
  {
    body: 'Django', question: questions[4],
  },
  {
    body: 'Perl', question: questions[4],
  },
  {
    body: 'Дима', question: questions[5],
  },
  {
    body: 'Влад', question: questions[5],
  },
  {
    body: 'Вася из Калиновки', correct: true, question: questions[5],
  },
])

