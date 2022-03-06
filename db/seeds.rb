# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

{
  Backend: [
    { title: 'Ruby',
      level: 2,
      name: 'Dima',
      surname: 'UA',
      email: 'dmitro@gmail.com',
      questions: {
        body: 'В каком году был разработан Ruby?',
        answers: {
          '1990' => false,
          '1992' => false,
          '1991' => true,
        }
      }
    },
    { title: 'C++',
      level: 3,
      name: 'Vlad',
      surname: 'UA',
      email: 'vladislav@gmail.com',
      questions: {
        body: 'Кто создал данный язык?',
        answers: {
          'Дима' => false,
          'Влад' => false,
          'Вася из Калиновки' => true
        }
      }
    }
  ],
  Frontend: [
    { title: 'HTML',
      level: 0,
      name: 'Igor',
      surname: 'RU',
      email: 'igor@gmail.com',
      questions:{
        body: 'Кто создатель языка?',
        answers: {
          'Дима' => false,
          'Влад' => false,
          'Петя из Джанкоя' => true
        }
      }
    }
  ]
}.each do |categories, all_tests|
  category = Category.create!(title: categories)
  all_tests.each do |tests|
    user = User.create!(name: tests[:name], surname: tests[:surname], email: tests[:email])
    test = category.tests.create!(title: tests[:title], level: tests[:level], author: user)
    question = test.questions.create!(body: tests[:questions][:body])
    tests[:questions][:answers].each do |answer, correct|
      question.answers.create!(body: answer, correct: correct)
    end
  end
end
