# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'Dima', surname: 'UA')
User.create(name: 'Vladislav', surname: 'UA')
User.create(name: 'Igor', surname: 'RU')
Answer.create(body: 'Yes', correct: 'f')
Answer.create(body: 'False', correct: 't')
Category.create(title: 'Backend')
Category.create(title: 'Fronted')
Question.create(body: 'Ruby создан в 1995?')
Question.create(body: 'HTML имеет ООП?')
Test.create(title: 'Ruby', level: 1)
Test.create(title: 'HTML')
Test.create(title: 'JS', level: 1)
Test.create(title: 'Python')
Test.create(title: 'SQL', level: 2)
Test.create(title: 'C++', level: 2)
Account.create(users_id: 1, tests_id: 1)
Account.create(users_id: 1, tests_id: 3)
Account.create(users_id: 1, tests_id: 4)
Account.create(users_id: 2, tests_id: 2)
Account.create(users_id: 2, tests_id: 5)
Account.create(users_id: 2, tests_id: 6)
History.create(categories_id: 1, tests_id:1)
History.create(categories_id: 1, tests_id:4)
History.create(categories_id: 1, tests_id:6)
History.create(categories_id: 2, tests_id:2)
History.create(categories_id: 2, tests_id:3)


